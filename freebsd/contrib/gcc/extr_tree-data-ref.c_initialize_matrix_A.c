
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int** lambda_matrix ;


 int CHREC_LEFT (int ) ;
 int CHREC_RIGHT (int ) ;
 scalar_t__ POLYNOMIAL_CHREC ;
 scalar_t__ TREE_CODE (int ) ;
 int gcc_assert (int ) ;
 int int_cst_value (int ) ;

__attribute__((used)) static int
initialize_matrix_A (lambda_matrix A, tree chrec, unsigned index, int mult)
{
  gcc_assert (chrec);

  if (TREE_CODE (chrec) != POLYNOMIAL_CHREC)
    return int_cst_value (chrec);

  A[index][0] = mult * int_cst_value (CHREC_RIGHT (chrec));
  return initialize_matrix_A (A, CHREC_LEFT (chrec), index + 1, mult);
}
