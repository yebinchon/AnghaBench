
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lambda_trans_matrix ;
typedef int FILE ;


 int LTM_COLSIZE (int ) ;
 int LTM_MATRIX (int ) ;
 int LTM_ROWSIZE (int ) ;
 int print_lambda_matrix (int *,int ,int ,int ) ;

void
print_lambda_trans_matrix (FILE *outfile, lambda_trans_matrix mat)
{
  print_lambda_matrix (outfile, LTM_MATRIX (mat), LTM_ROWSIZE (mat),
         LTM_COLSIZE (mat));
}
