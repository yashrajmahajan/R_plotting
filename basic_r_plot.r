
#Dataset showing 
library(datasets)
data(iris)
View(iris)

unique(iris$Species) # show unique species
############################################
#Data plotting
library(datasets)
data(mtcars)
head(mtcars, 5)

#load ggplot package
library(ggplot2)
# create a scatterplot of displacement (disp) and miles per gallon (mpg)
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon")
mtcars$vs <- as.factor(mtcars$vs)
# create boxplot of the distribution for v-shaped and straight Engine
ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()

ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + geom_boxplot(alpha=0.3) + theme(legend.position="none")

ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5)
#############################################################
#plot iris data for visualization
library(datasets)
data(iris)

library(GGally)
ggpairs(iris, mapping=ggplot2::aes(colour = Species))