
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;


 int CLASSTYPE_VISIBILITY (int *) ;
 scalar_t__ CLASS_TYPE_P (int *) ;
 int TREE_PUBLIC (int ) ;
 int TYPE_MAIN_DECL (int *) ;
 int TYPE_P (int *) ;
 int VISIBILITY_ANON ;

__attribute__((used)) static tree
min_vis_r (tree *tp, int *walk_subtrees, void *data)
{
  int *vis_p = (int *)data;
  if (! TYPE_P (*tp))
    {
      *walk_subtrees = 0;
    }
  else if (CLASS_TYPE_P (*tp))
    {
      if (!TREE_PUBLIC (TYPE_MAIN_DECL (*tp)))
 {
   *vis_p = VISIBILITY_ANON;
   return *tp;
 }
      else if (CLASSTYPE_VISIBILITY (*tp) > *vis_p)
 *vis_p = CLASSTYPE_VISIBILITY (*tp);
    }
  return ((void*)0);
}
