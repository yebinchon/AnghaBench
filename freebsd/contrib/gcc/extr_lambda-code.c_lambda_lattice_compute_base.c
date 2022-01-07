
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int** lambda_matrix ;
typedef int lambda_loopnest ;
typedef int lambda_loop ;
typedef int lambda_linear_expression ;
typedef int lambda_lattice ;


 int** LATTICE_BASE (int ) ;
 scalar_t__* LATTICE_ORIGIN (int ) ;
 scalar_t__** LATTICE_ORIGIN_INVARIANTS (int ) ;
 int* LLE_COEFFICIENTS (int ) ;
 scalar_t__ LLE_CONSTANT (int ) ;
 int LLE_DENOMINATOR (int ) ;
 scalar_t__* LLE_INVARIANT_COEFFICIENTS (int ) ;
 int LLE_NEXT (int ) ;
 int LL_LOWER_BOUND (int) ;
 int LL_STEP (int) ;
 int LN_DEPTH (int ) ;
 int LN_INVARIANTS (int ) ;
 int* LN_LOOPS (int ) ;
 int gcc_assert (int) ;
 int lambda_lattice_new (int,int) ;

__attribute__((used)) static lambda_lattice
lambda_lattice_compute_base (lambda_loopnest nest)
{
  lambda_lattice ret;
  int depth, invariants;
  lambda_matrix base;

  int i, j, step;
  lambda_loop loop;
  lambda_linear_expression expression;

  depth = LN_DEPTH (nest);
  invariants = LN_INVARIANTS (nest);

  ret = lambda_lattice_new (depth, invariants);
  base = LATTICE_BASE (ret);
  for (i = 0; i < depth; i++)
    {
      loop = LN_LOOPS (nest)[i];
      gcc_assert (loop);
      step = LL_STEP (loop);


      if (step == 1)
 {
   for (j = 0; j < depth; j++)
     base[i][j] = 0;
   base[i][i] = 1;
   LATTICE_ORIGIN (ret)[i] = 0;
   for (j = 0; j < invariants; j++)
     LATTICE_ORIGIN_INVARIANTS (ret)[i][j] = 0;
 }
      else
 {


   expression = LL_LOWER_BOUND (loop);
   gcc_assert (expression && !LLE_NEXT (expression)
        && LLE_DENOMINATOR (expression) == 1);



   for (j = 0; j < i; j++)
     base[i][j] = LLE_COEFFICIENTS (expression)[j]
       * LL_STEP (LN_LOOPS (nest)[j]);
   base[i][i] = step;
   for (j = i + 1; j < depth; j++)
     base[i][j] = 0;



   LATTICE_ORIGIN (ret)[i] = LLE_CONSTANT (expression);



   for (j = 0; j < invariants; j++)
     LATTICE_ORIGIN_INVARIANTS (ret)[i][j] =
       LLE_INVARIANT_COEFFICIENTS (expression)[j];
 }
    }
  return ret;
}
