
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* lambda_vector ;
typedef int lambda_trans_matrix ;
typedef int** lambda_matrix ;
typedef int lambda_loopnest ;
typedef int lambda_loop ;
typedef int * lambda_linear_expression ;
typedef int lambda_lattice ;


 int** LATTICE_BASE (int ) ;
 int LATTICE_ORIGIN (int ) ;
 int** LATTICE_ORIGIN_INVARIANTS (int ) ;
 int* LLE_COEFFICIENTS (int *) ;
 int LLE_CONSTANT (int *) ;
 int LLE_DENOMINATOR (int *) ;
 int* LLE_INVARIANT_COEFFICIENTS (int *) ;
 int * LLE_NEXT (int *) ;
 int * LL_LOWER_BOUND (int ) ;
 scalar_t__ LL_STEP (int ) ;
 int * LL_UPPER_BOUND (int ) ;
 int LN_DEPTH (int ) ;
 int LN_INVARIANTS (int ) ;
 int * LN_LOOPS (int ) ;
 int LTM_MATRIX (int ) ;
 int compute_nest_using_fourier_motzkin (int,int,int,int**,int**,int*) ;
 int gcc_assert (int) ;
 int lambda_lattice_compute_base (int ) ;
 int lambda_matrix_add_mc (int**,int,int**,int,int**,int,int) ;
 int lambda_matrix_inverse (int ,int**,int) ;
 int lambda_matrix_mult (int**,int**,int**,int,int,int) ;
 int** lambda_matrix_new (int,int) ;
 int lambda_matrix_vector_mult (int**,int,int,int ,int*) ;
 int lambda_vector_add_mc (int*,int,int*,int,int*,int) ;
 int* lambda_vector_new (int) ;

__attribute__((used)) static lambda_loopnest
lambda_compute_auxillary_space (lambda_loopnest nest,
    lambda_trans_matrix trans)
{
  lambda_matrix A, B, A1, B1;
  lambda_vector a, a1;
  lambda_matrix invertedtrans;
  int depth, invariants, size;
  int i, j;
  lambda_loop loop;
  lambda_linear_expression expression;
  lambda_lattice lattice;

  depth = LN_DEPTH (nest);
  invariants = LN_INVARIANTS (nest);




  A = lambda_matrix_new (128, depth);
  B = lambda_matrix_new (128, invariants);
  a = lambda_vector_new (128);

  A1 = lambda_matrix_new (128, depth);
  B1 = lambda_matrix_new (128, invariants);
  a1 = lambda_vector_new (128);





  size = 0;
  for (i = 0; i < depth; i++)
    {
      loop = LN_LOOPS (nest)[i];


      if (LL_STEP (loop) > 0)
 expression = LL_LOWER_BOUND (loop);
      else
 expression = LL_UPPER_BOUND (loop);

      for (; expression != ((void*)0); expression = LLE_NEXT (expression))
 {

   for (j = 0; j < i; j++)
     A[size][j] = LLE_COEFFICIENTS (expression)[j];


   for (j = 0; j < invariants; j++)
     B[size][j] = LLE_INVARIANT_COEFFICIENTS (expression)[j];


   a[size] = LLE_CONSTANT (expression);



   A[size][i] = -1 * LLE_DENOMINATOR (expression);
   a[size] *= -1;
   for (j = 0; j < invariants; j++)
     B[size][j] *= -1;

   size++;

   gcc_assert (size <= 127);

 }


      if (LL_STEP (loop) > 0)
 expression = LL_UPPER_BOUND (loop);
      else
 expression = LL_LOWER_BOUND (loop);

      for (; expression != ((void*)0); expression = LLE_NEXT (expression))
 {

   for (j = 0; j < i; j++)
     A[size][j] = LLE_COEFFICIENTS (expression)[j];


   for (j = 0; j < invariants; j++)
     B[size][j] = LLE_INVARIANT_COEFFICIENTS (expression)[j];


   a[size] = LLE_CONSTANT (expression);


   for (j = 0; j < i; j++)
     A[size][j] *= -1;
   A[size][i] = LLE_DENOMINATOR (expression);
   size++;

   gcc_assert (size <= 127);

 }
    }



  lattice = lambda_lattice_compute_base (nest);




  lambda_matrix_mult (A, LATTICE_BASE (lattice), A1, size, depth, depth);


  lambda_matrix_vector_mult (A, size, depth, LATTICE_ORIGIN (lattice), a1);
  lambda_vector_add_mc (a, 1, a1, -1, a1, size);


  lambda_matrix_mult (A, LATTICE_ORIGIN_INVARIANTS (lattice), B1, size, depth,
        invariants);
  lambda_matrix_add_mc (B, 1, B1, -1, B1, size, invariants);




  invertedtrans = lambda_matrix_new (depth, depth);


  lambda_matrix_inverse (LTM_MATRIX (trans),
    invertedtrans, depth);


  lambda_matrix_mult (A1, invertedtrans, A, size, depth, depth);

  return compute_nest_using_fourier_motzkin (size, depth, invariants,
          A, B1, a1);
}
