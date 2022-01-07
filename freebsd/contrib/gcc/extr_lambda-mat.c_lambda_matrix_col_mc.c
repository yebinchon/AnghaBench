
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int** lambda_matrix ;



void
lambda_matrix_col_mc (lambda_matrix mat, int m, int c1, int const1)
{
  int i;

  for (i = 0; i < m; i++)
    mat[i][c1] *= const1;
}
