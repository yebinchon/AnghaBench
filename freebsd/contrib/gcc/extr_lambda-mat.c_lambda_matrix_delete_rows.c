
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ** lambda_matrix ;



void
lambda_matrix_delete_rows (lambda_matrix mat, int rows, int from, int to)
{
  int i;
  int dist;
  dist = to - from;

  for (i = to; i < rows; i++)
    mat[i - dist] = mat[i];

  for (i = rows - dist; i < rows; i++)
    mat[i] = ((void*)0);
}
