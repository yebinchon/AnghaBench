
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lambda_linear_expression ;
typedef int FILE ;


 int LLE_COEFFICIENTS (int ) ;
 int LLE_CONSTANT (int ) ;
 int LLE_DENOMINATOR (int ) ;
 int LLE_INVARIANT_COEFFICIENTS (int ) ;
 int fprintf (int *,char*,...) ;
 int print_linear_expression (int *,int ,int,char) ;

void
print_lambda_linear_expression (FILE * outfile,
    lambda_linear_expression expr,
    int depth, int invariants, char start)
{
  fprintf (outfile, "\tLinear expression: ");
  print_linear_expression (outfile, LLE_COEFFICIENTS (expr), depth, start);
  fprintf (outfile, " constant: %d ", LLE_CONSTANT (expr));
  fprintf (outfile, "  invariants: ");
  print_linear_expression (outfile, LLE_INVARIANT_COEFFICIENTS (expr),
      invariants, 'A');
  fprintf (outfile, "  denominator: %d\n", LLE_DENOMINATOR (expr));
}
