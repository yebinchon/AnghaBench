
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int TREE_NO_WARNING ;


 int NOP_EXPR ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ build1 (int ,int ,scalar_t__) ;
 scalar_t__ fold_builtin_1 (scalar_t__,scalar_t__,int) ;

tree
fold_builtin (tree fndecl, tree arglist, bool ignore)
{
  tree exp = fold_builtin_1 (fndecl, arglist, ignore);
  if (exp)
    {
      exp = build1 (NOP_EXPR, TREE_TYPE (exp), exp);
      TREE_NO_WARNING (exp) = 1;
    }

  return exp;
}
