
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int BIND_EXPR ;
 int BLOCK ;
 int NULL_TREE ;
 int SAVE_EXPR ;
 int TARGET_EXPR ;
 int TREE_CODE (int ) ;
 scalar_t__ TREE_CODE_CLASS (int) ;
 int copy_tree_r (int *,int*,void*) ;
 int gcc_assert (int) ;
 scalar_t__ tcc_constant ;
 scalar_t__ tcc_declaration ;
 scalar_t__ tcc_type ;

__attribute__((used)) static tree
mostly_copy_tree_r (tree *tp, int *walk_subtrees, void *data)
{
  enum tree_code code = TREE_CODE (*tp);

  if (TREE_CODE_CLASS (code) == tcc_type
      || TREE_CODE_CLASS (code) == tcc_declaration
      || TREE_CODE_CLASS (code) == tcc_constant
      || code == SAVE_EXPR || code == TARGET_EXPR



      || code == BLOCK)
    *walk_subtrees = 0;
  else
    {
      gcc_assert (code != BIND_EXPR);
      copy_tree_r (tp, walk_subtrees, data);
    }

  return NULL_TREE;
}
