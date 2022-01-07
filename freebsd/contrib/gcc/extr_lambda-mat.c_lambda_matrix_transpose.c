
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ** lambda_matrix ;



void
lambda_matrix_transpose (lambda_matrix mat1, lambda_matrix mat2, int m, int n)
{
  int i, j;

  for (i = 0; i < n; i++)
    for (j = 0; j < m; j++)
      mat2[i][j] = mat1[j][i];
}
