
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lambda_loop ;
typedef int * lambda_linear_expression ;
typedef int FILE ;


 int * LLE_NEXT (int *) ;
 int * LL_LINEAR_OFFSET (int ) ;
 int * LL_LOWER_BOUND (int ) ;
 int LL_STEP (int ) ;
 int * LL_UPPER_BOUND (int ) ;
 int fprintf (int *,char*,...) ;
 int gcc_assert (int ) ;
 int print_lambda_linear_expression (int *,int *,int,int,char) ;

void
print_lambda_loop (FILE * outfile, lambda_loop loop, int depth,
     int invariants, char start)
{
  int step;
  lambda_linear_expression expr;

  gcc_assert (loop);

  expr = LL_LINEAR_OFFSET (loop);
  step = LL_STEP (loop);
  fprintf (outfile, "  step size = %d \n", step);

  if (expr)
    {
      fprintf (outfile, "  linear offset: \n");
      print_lambda_linear_expression (outfile, expr, depth, invariants,
          start);
    }

  fprintf (outfile, "  lower bound: \n");
  for (expr = LL_LOWER_BOUND (loop); expr != ((void*)0); expr = LLE_NEXT (expr))
    print_lambda_linear_expression (outfile, expr, depth, invariants, start);
  fprintf (outfile, "  upper bound: \n");
  for (expr = LL_UPPER_BOUND (loop); expr != ((void*)0); expr = LLE_NEXT (expr))
    print_lambda_linear_expression (outfile, expr, depth, invariants, start);
}
