
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
 int TREE_VALUE (int ) ;
 int VOID_TYPE ;
 int VOIDmode ;
 int build_tree_list (int ,int ) ;
 int const0_rtx ;
 int expand_builtin_memset (int ,int ,int ,int ) ;
 int fold_convert (int ,int ) ;
 int integer_zero_node ;
 int sizetype ;
 int tree_cons (int ,int ,int ) ;
 int validate_arglist (int ,int ,int ,int ) ;

__attribute__((used)) static rtx
expand_builtin_bzero (tree exp)
{
  tree arglist = TREE_OPERAND (exp, 1);
  tree dest, size, newarglist;

  if (!validate_arglist (arglist, POINTER_TYPE, INTEGER_TYPE, VOID_TYPE))
    return NULL_RTX;

  dest = TREE_VALUE (arglist);
  size = TREE_VALUE (TREE_CHAIN (arglist));






  newarglist = build_tree_list (NULL_TREE, fold_convert (sizetype, size));
  newarglist = tree_cons (NULL_TREE, integer_zero_node, newarglist);
  newarglist = tree_cons (NULL_TREE, dest, newarglist);

  return expand_builtin_memset (newarglist, const0_rtx, VOIDmode, exp);
}
