
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;



 int IS_TYPE_OR_DECL_P (int ) ;
 int NULL_TREE ;


 int const TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int warn_uninit (int ,char*,void*) ;

__attribute__((used)) static tree
warn_uninitialized_var (tree *tp, int *walk_subtrees, void *data)
{
  tree t = *tp;

  switch (TREE_CODE (t))
    {
    case 128:


      warn_uninit (t, "%H%qD is used uninitialized in this function", data);
      *walk_subtrees = 0;
      break;

    case 129:
    case 130:



      if (TREE_CODE (TREE_OPERAND (t, 0)) == 128)
 *walk_subtrees = 0;
      break;

    default:
      if (IS_TYPE_OR_DECL_P (t))
 *walk_subtrees = 0;
      break;
    }

  return NULL_TREE;
}
