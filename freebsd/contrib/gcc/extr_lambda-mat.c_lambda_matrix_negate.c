
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * lambda_matrix ;


 int lambda_vector_negate (int ,int ,int) ;

void
lambda_matrix_negate (lambda_matrix mat1, lambda_matrix mat2, int m, int n)
{
  int i;

  for (i = 0; i < m; i++)
    lambda_vector_negate (mat1[i], mat2[i], n);
}
