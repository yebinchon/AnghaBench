
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int INTEGER_TYPE ;
 int NULL_TREE ;
 int POINTER_TYPE ;
 int TREE_CHAIN (int ) ;
 int TREE_VALUE (int ) ;
 int VOID_TYPE ;
 int build_tree_list (int ,int ) ;
 int fold_builtin_memset (int ,int ,int) ;
 int fold_convert (int ,int ) ;
 int integer_zero_node ;
 int sizetype ;
 int tree_cons (int ,int ,int ) ;
 int validate_arglist (int ,int ,int ,int ) ;
 int void_type_node ;

__attribute__((used)) static tree
fold_builtin_bzero (tree arglist, bool ignore)
{
  tree dest, size, newarglist;

  if (!validate_arglist (arglist, POINTER_TYPE, INTEGER_TYPE, VOID_TYPE))
    return 0;

  if (!ignore)
    return 0;

  dest = TREE_VALUE (arglist);
  size = TREE_VALUE (TREE_CHAIN (arglist));






  newarglist = build_tree_list (NULL_TREE, fold_convert (sizetype, size));
  newarglist = tree_cons (NULL_TREE, integer_zero_node, newarglist);
  newarglist = tree_cons (NULL_TREE, dest, newarglist);
  return fold_builtin_memset (newarglist, void_type_node, ignore);
}
