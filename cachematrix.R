## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##This function create a vector that caches the calculation of its inverse
makeCacheMatrix <- function(x = matrix()) {
m<-NULL ##the inverse will start with null
  set<-function(y){
  x<<-y
  m<<-NULL
}
##use get and set function to get the inverse
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}


## Write a short comment describing this function

## this function is to calculate inverse
##if inverse already exist it simply return the value
cacheSolve <- function(x, ...) {
 ## Return a matrix that is the inverse of 'x'
m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
}

##this function is to calculate inverse
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}

       

