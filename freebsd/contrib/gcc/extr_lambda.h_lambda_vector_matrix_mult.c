
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* lambda_vector ;
typedef int** lambda_matrix ;


 int lambda_vector_clear (int*,int) ;

__attribute__((used)) static inline void
lambda_vector_matrix_mult (lambda_vector vect, int m, lambda_matrix mat,
      int n, lambda_vector dest)
{
  int i, j;
  lambda_vector_clear (dest, n);
  for (i = 0; i < n; i++)
    for (j = 0; j < m; j++)
      dest[i] += mat[j][i] * vect[j];
}
