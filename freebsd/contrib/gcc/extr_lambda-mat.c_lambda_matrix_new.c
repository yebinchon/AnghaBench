
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lambda_vector ;
typedef int * lambda_matrix ;


 int * ggc_alloc (int) ;
 int lambda_vector_new (int) ;

lambda_matrix
lambda_matrix_new (int m, int n)
{
  lambda_matrix mat;
  int i;

  mat = ggc_alloc (m * sizeof (lambda_vector));

  for (i = 0; i < m; i++)
    mat[i] = lambda_vector_new (n);

  return mat;
}
