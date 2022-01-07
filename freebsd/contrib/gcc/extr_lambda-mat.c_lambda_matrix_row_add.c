
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int** lambda_matrix ;



void
lambda_matrix_row_add (lambda_matrix mat, int n, int r1, int r2, int const1)
{
  int i;

  if (const1 == 0)
    return;

  for (i = 0; i < n; i++)
    mat[r2][i] += const1 * mat[r1][i];
}
