
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 scalar_t__ CONVERT_EXPR ;
 int EQ_EXPR ;
 scalar_t__ FUNCTION_TYPE ;
 scalar_t__ HAVE_canonicalize_funcptr_for_compare ;
 scalar_t__ INTEGER_CST ;
 int NE_EXPR ;
 scalar_t__ NOP_EXPR ;
 int NULL_TREE ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_CONSTANT_OVERFLOW (int ) ;
 int TREE_INT_CST_HIGH (int ) ;
 int TREE_INT_CST_LOW (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int TREE_OVERFLOW (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_PRECISION (int ) ;
 scalar_t__ TYPE_UNSIGNED (int ) ;
 int build_int_cst_wide (int ,int ,int ) ;
 int fold_build2 (int,int ,int ,int ) ;
 int fold_convert (int ,int ) ;
 int force_fit_type (int ,int ,int ,int ) ;

__attribute__((used)) static tree
fold_sign_changed_comparison (enum tree_code code, tree type,
         tree arg0, tree arg1)
{
  tree arg0_inner, tmp;
  tree inner_type, outer_type;

  if (TREE_CODE (arg0) != NOP_EXPR
      && TREE_CODE (arg0) != CONVERT_EXPR)
    return NULL_TREE;

  outer_type = TREE_TYPE (arg0);
  arg0_inner = TREE_OPERAND (arg0, 0);
  inner_type = TREE_TYPE (arg0_inner);
  if (TYPE_PRECISION (inner_type) != TYPE_PRECISION (outer_type))
    return NULL_TREE;

  if (TREE_CODE (arg1) != INTEGER_CST
      && !((TREE_CODE (arg1) == NOP_EXPR
     || TREE_CODE (arg1) == CONVERT_EXPR)
    && TREE_TYPE (TREE_OPERAND (arg1, 0)) == inner_type))
    return NULL_TREE;

  if (TYPE_UNSIGNED (inner_type) != TYPE_UNSIGNED (outer_type)
      && code != NE_EXPR
      && code != EQ_EXPR)
    return NULL_TREE;

  if (TREE_CODE (arg1) == INTEGER_CST)
    {
      tmp = build_int_cst_wide (inner_type,
    TREE_INT_CST_LOW (arg1),
    TREE_INT_CST_HIGH (arg1));
      arg1 = force_fit_type (tmp, 0,
        TREE_OVERFLOW (arg1),
        TREE_CONSTANT_OVERFLOW (arg1));
    }
  else
    arg1 = fold_convert (inner_type, arg1);

  return fold_build2 (code, type, arg0_inner, arg1);
}
