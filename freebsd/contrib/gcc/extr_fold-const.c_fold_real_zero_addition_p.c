
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int HONOR_SIGNED_ZEROS (int ) ;
 int HONOR_SIGN_DEPENDENT_ROUNDING (int ) ;
 scalar_t__ HONOR_SNANS (int ) ;
 scalar_t__ REAL_CST ;
 scalar_t__ REAL_VALUE_MINUS_ZERO (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_REAL_CST (int ) ;
 int TYPE_MODE (int ) ;
 int real_zerop (int ) ;

__attribute__((used)) static bool
fold_real_zero_addition_p (tree type, tree addend, int negate)
{
  if (!real_zerop (addend))
    return 0;


  if (HONOR_SNANS (TYPE_MODE (type)))
    return 0;


  if (!HONOR_SIGNED_ZEROS (TYPE_MODE (type)))
    return 1;


  if (TREE_CODE (addend) == REAL_CST
      && REAL_VALUE_MINUS_ZERO (TREE_REAL_CST (addend)))
    negate = !negate;





  return negate && !HONOR_SIGN_DEPENDENT_ROUNDING (TYPE_MODE (type));
}
