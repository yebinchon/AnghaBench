
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;


 scalar_t__ POINTER_TYPE_P (int *) ;
 int TREE_CONSTANT (scalar_t__) ;
 scalar_t__ TYPE_P (int *) ;
 scalar_t__ TYPE_SIZE (int *) ;
 int TYPE_SIZES_GIMPLIFIED (int *) ;
 int gimplify_type_sizes (int *,int **) ;

__attribute__((used)) static tree
gimplify_parm_type (tree *tp, int *walk_subtrees, void *data)
{
  tree t = *tp;

  *walk_subtrees = 0;
  if (TYPE_P (t))
    {
      if (POINTER_TYPE_P (t))
 *walk_subtrees = 1;
      else if (TYPE_SIZE (t) && !TREE_CONSTANT (TYPE_SIZE (t))
        && !TYPE_SIZES_GIMPLIFIED (t))
 {
   gimplify_type_sizes (t, (tree *) data);
   *walk_subtrees = 1;
 }
    }

  return ((void*)0);
}
