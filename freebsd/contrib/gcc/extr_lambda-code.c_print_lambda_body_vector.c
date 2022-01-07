
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lambda_body_vector ;
typedef int FILE ;


 int LBV_COEFFICIENTS (int ) ;
 int LBV_SIZE (int ) ;
 int print_lambda_vector (int *,int ,int ) ;

void
print_lambda_body_vector (FILE * outfile, lambda_body_vector body)
{
  print_lambda_vector (outfile, LBV_COEFFICIENTS (body), LBV_SIZE (body));
}
