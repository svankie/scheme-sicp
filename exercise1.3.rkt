#lang scheme

(require srfi/8)
(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))
(define 
    (summ a b c)
        (receive (x y) 
            (cond ((>= a b c) (values a b)) 
                  ((>= b c a) (values b c)) 
                  ((>= c a b) (values c a))
                  (else (values )))
        (sum-of-squares x y))
)