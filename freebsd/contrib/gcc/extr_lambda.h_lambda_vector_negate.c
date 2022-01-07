
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lambda_vector ;


 int lambda_vector_mult_const (int ,int ,int,int) ;

__attribute__((used)) static inline void
lambda_vector_negate (lambda_vector vec1, lambda_vector vec2,
        int size)
{
  lambda_vector_mult_const (vec1, vec2, size, -1);
}
