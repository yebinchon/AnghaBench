
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int NULL_TREE ;
 int REAL_TYPE ;
 int TREE_VALUE (int ) ;
 int VOID_TYPE ;
 scalar_t__ real_zerop (int ) ;
 int validate_arglist (int ,int ,int ) ;

__attribute__((used)) static tree
fold_builtin_sin (tree arglist)
{
  tree arg = TREE_VALUE (arglist);

  if (!validate_arglist (arglist, REAL_TYPE, VOID_TYPE))
    return NULL_TREE;


  if (real_zerop (arg))
    return arg;

  return NULL_TREE;
}
