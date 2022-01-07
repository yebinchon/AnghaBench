
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int REAL_VALUE_TYPE ;


 int ABS_EXPR ;
 scalar_t__ NULL_TREE ;
 scalar_t__ REAL_CST ;
 int REAL_TYPE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_CONSTANT_OVERFLOW (scalar_t__) ;
 int TREE_REAL_CST (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int VOID_TYPE ;
 scalar_t__ build_function_call_expr (scalar_t__,scalar_t__) ;
 scalar_t__ build_real (scalar_t__,int ) ;
 int fold_build1 (int ,scalar_t__,scalar_t__) ;
 scalar_t__ fold_convert (scalar_t__,scalar_t__) ;
 scalar_t__ fold_strip_sign_ops (scalar_t__) ;
 scalar_t__ omit_one_operand (scalar_t__,int ,scalar_t__) ;
 scalar_t__ operand_equal_p (scalar_t__,scalar_t__,int ) ;
 int real_copysign (int *,int *) ;
 scalar_t__ tree_cons (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ tree_expr_nonnegative_p (scalar_t__) ;
 int validate_arglist (scalar_t__,int ,int ,int ) ;

__attribute__((used)) static tree
fold_builtin_copysign (tree fndecl, tree arglist, tree type)
{
  tree arg1, arg2, tem;

  if (!validate_arglist (arglist, REAL_TYPE, REAL_TYPE, VOID_TYPE))
    return NULL_TREE;

  arg1 = TREE_VALUE (arglist);
  arg2 = TREE_VALUE (TREE_CHAIN (arglist));


  if (operand_equal_p (arg1, arg2, 0))
    return fold_convert (type, arg1);


  if (TREE_CODE (arg1) == REAL_CST
      && TREE_CODE (arg2) == REAL_CST
      && !TREE_CONSTANT_OVERFLOW (arg1)
      && !TREE_CONSTANT_OVERFLOW (arg2))
    {
      REAL_VALUE_TYPE c1, c2;

      c1 = TREE_REAL_CST (arg1);
      c2 = TREE_REAL_CST (arg2);

      real_copysign (&c1, &c2);
      return build_real (type, c1);
    }



  if (tree_expr_nonnegative_p (arg2))
    return omit_one_operand (type,
        fold_build1 (ABS_EXPR, type, arg1),
        arg2);


  tem = fold_strip_sign_ops (arg1);
  if (tem)
    {
      arglist = tree_cons (NULL_TREE, tem, TREE_CHAIN (arglist));
      return build_function_call_expr (fndecl, arglist);
    }

  return NULL_TREE;
}
