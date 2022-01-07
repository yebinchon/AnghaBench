
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lambda_vector ;
typedef int lambda_matrix ;


 int lambda_matrix_add_mc (int ,int,int ,int,int ,int,int) ;
 int lambda_matrix_get_column (int ,int,int,int ) ;
 int lambda_matrix_id (int ,int) ;
 int lambda_matrix_inverse (int ,int ,int) ;
 int lambda_matrix_mult (int ,int ,int ,int,int,int) ;
 int lambda_matrix_negate (int ,int ,int,int) ;
 int lambda_matrix_new (int,int) ;
 int lambda_matrix_transpose (int ,int ,int,int) ;

void
lambda_matrix_project_to_null (lambda_matrix B, int rowsize,
          int colsize, int k, lambda_vector x)
{
  lambda_matrix M1, M2, M3, I;
  int determinant;




  M1 = lambda_matrix_new (colsize, colsize);
  lambda_matrix_transpose (B, M1, rowsize, colsize);


  M2 = lambda_matrix_new (colsize, colsize);
  lambda_matrix_mult (B, M1, M2, rowsize, colsize, rowsize);


  M3 = lambda_matrix_new (colsize, colsize);
  determinant = lambda_matrix_inverse (M2, M3, rowsize);


  lambda_matrix_mult (M1, M3, M2, colsize, rowsize, rowsize);


  lambda_matrix_mult (M2, B, M1, colsize, rowsize, colsize);
  lambda_matrix_negate (M1, M1, colsize, colsize);

  I = lambda_matrix_new (colsize, colsize);
  lambda_matrix_id (I, colsize);

  lambda_matrix_add_mc (I, determinant, M1, 1, M2, colsize, colsize);

  lambda_matrix_get_column (M2, colsize, k - 1, x);

}
