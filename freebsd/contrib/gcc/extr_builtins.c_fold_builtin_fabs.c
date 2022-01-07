
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int ABS_EXPR ;
 scalar_t__ REAL_CST ;
 int REAL_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_VALUE (int ) ;
 int VOID_TYPE ;
 int fold_abs_const (int ,int ) ;
 int fold_build1 (int ,int ,int ) ;
 int fold_convert (int ,int ) ;
 int validate_arglist (int ,int ,int ) ;

__attribute__((used)) static tree
fold_builtin_fabs (tree arglist, tree type)
{
  tree arg;

  if (!validate_arglist (arglist, REAL_TYPE, VOID_TYPE))
    return 0;

  arg = TREE_VALUE (arglist);
  arg = fold_convert (type, arg);
  if (TREE_CODE (arg) == REAL_CST)
    return fold_abs_const (arg, type);
  return fold_build1 (ABS_EXPR, type, arg);
}
