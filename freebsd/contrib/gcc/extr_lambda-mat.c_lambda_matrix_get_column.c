
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * lambda_vector ;
typedef int ** lambda_matrix ;



__attribute__((used)) static void
lambda_matrix_get_column (lambda_matrix mat, int n, int col,
     lambda_vector vec)
{
  int i;

  for (i = 0; i < n; i++)
    vec[i] = mat[i][col];
}
