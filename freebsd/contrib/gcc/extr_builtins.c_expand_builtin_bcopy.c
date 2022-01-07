
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;


 int INTEGER_TYPE ;
 int NULL_RTX ;
 int NULL_TREE ;
 int POINTER_TYPE ;
 int TREE_CHAIN (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int VOID_TYPE ;
 int VOIDmode ;
 int build_tree_list (int ,int ) ;
 int const0_rtx ;
 int expand_builtin_memmove (int ,int ,int ,int ,int ) ;
 int fold_convert (int ,int ) ;
 int sizetype ;
 int tree_cons (int ,int ,int ) ;
 int validate_arglist (int ,int ,int ,int ,int ) ;

__attribute__((used)) static rtx
expand_builtin_bcopy (tree exp)
{
  tree arglist = TREE_OPERAND (exp, 1);
  tree type = TREE_TYPE (exp);
  tree src, dest, size, newarglist;

  if (!validate_arglist (arglist,
    POINTER_TYPE, POINTER_TYPE, INTEGER_TYPE, VOID_TYPE))
    return NULL_RTX;

  src = TREE_VALUE (arglist);
  dest = TREE_VALUE (TREE_CHAIN (arglist));
  size = TREE_VALUE (TREE_CHAIN (TREE_CHAIN (arglist)));






  newarglist = build_tree_list (NULL_TREE, fold_convert (sizetype, size));
  newarglist = tree_cons (NULL_TREE, src, newarglist);
  newarglist = tree_cons (NULL_TREE, dest, newarglist);

  return expand_builtin_memmove (newarglist, type, const0_rtx, VOIDmode, exp);
}
