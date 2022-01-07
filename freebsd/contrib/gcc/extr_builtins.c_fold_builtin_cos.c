
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ NEGATE_EXPR ;
 int NULL_TREE ;
 int REAL_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int TREE_VALUE (int ) ;
 int VOID_TYPE ;
 int build_function_call_expr (int ,int ) ;
 int build_real (int ,int ) ;
 int build_tree_list (int ,int ) ;
 int dconst1 ;
 scalar_t__ real_zerop (int ) ;
 int validate_arglist (int ,int ,int ) ;

__attribute__((used)) static tree
fold_builtin_cos (tree arglist, tree type, tree fndecl)
{
  tree arg = TREE_VALUE (arglist);

  if (!validate_arglist (arglist, REAL_TYPE, VOID_TYPE))
    return NULL_TREE;


  if (real_zerop (arg))
    return build_real (type, dconst1);


  if (TREE_CODE (arg) == NEGATE_EXPR)
    {
      tree args = build_tree_list (NULL_TREE,
       TREE_OPERAND (arg, 0));
      return build_function_call_expr (fndecl, args);
    }

  return NULL_TREE;
}
