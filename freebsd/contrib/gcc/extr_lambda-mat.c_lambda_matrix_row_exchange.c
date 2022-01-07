
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lambda_vector ;
typedef int * lambda_matrix ;



void
lambda_matrix_row_exchange (lambda_matrix mat, int r1, int r2)
{
  lambda_vector row;

  row = mat[r1];
  mat[r1] = mat[r2];
  mat[r2] = row;
}
