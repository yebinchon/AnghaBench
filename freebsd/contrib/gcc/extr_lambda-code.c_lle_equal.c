
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * lambda_linear_expression ;


 scalar_t__* LLE_COEFFICIENTS (int *) ;
 scalar_t__ LLE_CONSTANT (int *) ;
 scalar_t__ LLE_DENOMINATOR (int *) ;
 scalar_t__* LLE_INVARIANT_COEFFICIENTS (int *) ;

__attribute__((used)) static bool
lle_equal (lambda_linear_expression lle1, lambda_linear_expression lle2,
    int depth, int invariants)
{
  int i;

  if (lle1 == ((void*)0) || lle2 == ((void*)0))
    return 0;
  if (LLE_CONSTANT (lle1) != LLE_CONSTANT (lle2))
    return 0;
  if (LLE_DENOMINATOR (lle1) != LLE_DENOMINATOR (lle2))
    return 0;
  for (i = 0; i < depth; i++)
    if (LLE_COEFFICIENTS (lle1)[i] != LLE_COEFFICIENTS (lle2)[i])
      return 0;
  for (i = 0; i < invariants; i++)
    if (LLE_INVARIANT_COEFFICIENTS (lle1)[i] !=
 LLE_INVARIANT_COEFFICIENTS (lle2)[i])
      return 0;
  return 1;
}
