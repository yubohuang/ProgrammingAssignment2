## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# This function creates a special matrix objext that can 
# cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<-function(y){
                x<<-y
                m<<-NULL
        }
        get<-function() x
        setmatrix<-function(solve) m<<- solve
        getmatrix<-function() m
        list(set=set, get=get,
             setmatrix=setmatrix,
             getmatrix=getmatrix)
}


## Write a short comment describing this function

# THis function computes the inverse of the special "matrix" 
# return by makeCacheMatrix above. If the inverse has already
# been calculaed (and the matrix has not changed), then the
# cachesolve should retriebe the inverse from the cache

cacheSolve <- function(x, ...) {
        m<-x$getmatrix()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        matrix<-x$get()
        m<-solve(matrix, ...)
        x$setmatrix(m)
        m
}



