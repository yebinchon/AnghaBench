
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int REAL_VALUE_TYPE ;


 int HONOR_SIGNED_ZEROS (int ) ;
 int LT_EXPR ;
 int NULL_TREE ;
 scalar_t__ REAL_CST ;
 int REAL_TYPE ;
 scalar_t__ REAL_VALUE_NEGATIVE (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_CONSTANT_OVERFLOW (int ) ;
 int TREE_REAL_CST (int ) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int TYPE_MODE (int ) ;
 int VOID_TYPE ;
 int build_real (int ,int ) ;
 int dconst0 ;
 int fold_build2 (int ,int ,int ,int ) ;
 int fold_convert (int ,int ) ;
 int integer_one_node ;
 int integer_zero_node ;
 int omit_one_operand (int ,int ,int ) ;
 scalar_t__ tree_expr_nonnegative_p (int ) ;
 int validate_arglist (int ,int ,int ) ;

__attribute__((used)) static tree
fold_builtin_signbit (tree fndecl, tree arglist)
{
  tree type = TREE_TYPE (TREE_TYPE (fndecl));
  tree arg, temp;

  if (!validate_arglist (arglist, REAL_TYPE, VOID_TYPE))
    return NULL_TREE;

  arg = TREE_VALUE (arglist);


  if (TREE_CODE (arg) == REAL_CST
      && !TREE_CONSTANT_OVERFLOW (arg))
    {
      REAL_VALUE_TYPE c;

      c = TREE_REAL_CST (arg);
      temp = REAL_VALUE_NEGATIVE (c) ? integer_one_node : integer_zero_node;
      return fold_convert (type, temp);
    }


  if (tree_expr_nonnegative_p (arg))
    return omit_one_operand (type, integer_zero_node, arg);


  if (!HONOR_SIGNED_ZEROS (TYPE_MODE (TREE_TYPE (arg))))
    return fold_build2 (LT_EXPR, type, arg,
   build_real (TREE_TYPE (arg), dconst0));

  return NULL_TREE;
}
