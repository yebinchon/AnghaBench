
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* lambda_vector ;
typedef int** lambda_matrix ;


 int lambda_matrix_col_add (int**,int,int,int,int) ;
 int lambda_matrix_col_exchange (int**,int,int,int) ;
 int lambda_matrix_col_negate (int**,int,int) ;
 int lambda_matrix_copy (int**,int**,int,int) ;
 int lambda_matrix_id (int**,int) ;
 int lambda_matrix_row_add (int**,int,int,int,int) ;
 int lambda_matrix_row_exchange (int**,int,int) ;
 int lambda_vector_first_nz (int*,int,int) ;
 int lambda_vector_min_nz (int*,int,int) ;
 int lambda_vector_negate (int*,int*,int) ;

void
lambda_matrix_hermite (lambda_matrix mat, int n,
         lambda_matrix H, lambda_matrix U)
{
  lambda_vector row;
  int i, j, factor, minimum_col;

  lambda_matrix_copy (mat, H, n, n);
  lambda_matrix_id (U, n);

  for (j = 0; j < n; j++)
    {
      row = H[j];


      for (i = j; i < n; i++)
 {
   if (row[i] < 0)
     {
       lambda_matrix_col_negate (H, n, i);
       lambda_vector_negate (U[i], U[i], n);
     }
 }


      while (lambda_vector_first_nz (row, n, j + 1) < n)
 {
   minimum_col = lambda_vector_min_nz (row, n, j);
   lambda_matrix_col_exchange (H, n, j, minimum_col);
   lambda_matrix_row_exchange (U, j, minimum_col);

   for (i = j + 1; i < n; i++)
     {
       factor = row[i] / row[j];
       lambda_matrix_col_add (H, n, j, i, -1 * factor);
       lambda_matrix_row_add (U, n, i, j, factor);
     }
 }
    }
}
