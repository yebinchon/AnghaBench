
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int FLOOR_MOD_EXPR ;
 scalar_t__ INTEGER_CST ;
 int MULT_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_INT_CST_HIGH (int ) ;
 int TREE_INT_CST_LOW (int ) ;
 int TREE_TYPE (int ) ;
 int build_int_cst (int ,int) ;
 int fold_build2 (int ,int ,int ,int ) ;
 int gcc_assert (int) ;
 scalar_t__ integer_zerop (int ) ;
 int tree_int_cst_sgn (int ) ;

tree
tree_fold_gcd (tree a, tree b)
{
  tree a_mod_b;
  tree type = TREE_TYPE (a);

  gcc_assert (TREE_CODE (a) == INTEGER_CST);
  gcc_assert (TREE_CODE (b) == INTEGER_CST);

  if (integer_zerop (a))
    return b;

  if (integer_zerop (b))
    return a;

  if (tree_int_cst_sgn (a) == -1)
    a = fold_build2 (MULT_EXPR, type, a,
       build_int_cst (type, -1));

  if (tree_int_cst_sgn (b) == -1)
    b = fold_build2 (MULT_EXPR, type, b,
       build_int_cst (type, -1));

  while (1)
    {
      a_mod_b = fold_build2 (FLOOR_MOD_EXPR, type, a, b);

      if (!TREE_INT_CST_LOW (a_mod_b)
   && !TREE_INT_CST_HIGH (a_mod_b))
 return b;

      a = b;
      b = a_mod_b;
    }
}
