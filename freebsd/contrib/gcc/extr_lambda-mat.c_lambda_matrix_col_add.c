
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int** lambda_matrix ;



void
lambda_matrix_col_add (lambda_matrix mat, int m, int c1, int c2, int const1)
{
  int i;

  if (const1 == 0)
    return;

  for (i = 0; i < m; i++)
    mat[i][c2] += const1 * mat[i][c1];
}
