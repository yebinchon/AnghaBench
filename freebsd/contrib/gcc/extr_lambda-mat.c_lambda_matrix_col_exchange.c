
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int** lambda_matrix ;



void
lambda_matrix_col_exchange (lambda_matrix mat, int m, int col1, int col2)
{
  int i;
  int tmp;
  for (i = 0; i < m; i++)
    {
      tmp = mat[i][col1];
      mat[i][col1] = mat[i][col2];
      mat[i][col2] = tmp;
    }
}
