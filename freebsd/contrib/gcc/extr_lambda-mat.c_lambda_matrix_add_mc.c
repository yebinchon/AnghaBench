
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * lambda_matrix ;


 int lambda_vector_add_mc (int ,int,int ,int,int ,int) ;

void
lambda_matrix_add_mc (lambda_matrix mat1, int const1,
        lambda_matrix mat2, int const2,
        lambda_matrix mat3, int m, int n)
{
  int i;

  for (i = 0; i < m; i++)
    lambda_vector_add_mc (mat1[i], const1, mat2[i], const2, mat3[i], n);
}
