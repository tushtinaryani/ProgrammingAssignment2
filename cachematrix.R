@@ -4,6 +4,22 @@
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 p <- NULL
    set <- function(y) {
        x <<- y
        p <<- NULL
    }
    get <- function() x
    setinverse <- function(inv) p <<- inv
    getinverse <- function() p
    list(
        set = set,
        get = get,
        setinverse = setinverse,
        getinverse = getinverse
    )



}

@@ -12,4 +28,15 @@ makeCacheMatrix <- function(x = matrix()) {

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

 p <- x$getinverse()
    if(!is.null(p)) {
        message("getting cached data")
        return(p)
    }
    m <- x$get()
    p <- solve(m, ...)
    x$setinverse(p)
    p

}
