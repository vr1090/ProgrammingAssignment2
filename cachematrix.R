## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
  #computation result
  m <<- NULL


  #set the data
  set <- function(y){
    x<<- y
    m <<- NULL
  } # end function
  
  get<- function() x
  setInverse<- function(inverseResult) m <<- inverseResult
  getInverse <- function() m
  
  list(set = set,get=get,setInverse=setInverse,getInverse=getInverse)
  
}#end of fucntion


## Write a short comment describing this function
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  result <- x$getInverse()
  if (is.null(result)) {
    data <- x$get()
    result <- solve(data)
    x$setInverse(result)
  }else
  {
    return(result)
  }#end else
}#end of method
