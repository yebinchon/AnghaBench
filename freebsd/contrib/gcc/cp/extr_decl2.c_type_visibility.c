
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int VISIBILITY_DEFAULT ;
 int min_vis_r ;
 int walk_tree_without_duplicates (int *,int ,int*) ;

__attribute__((used)) static int
type_visibility (tree type)
{
  int vis = VISIBILITY_DEFAULT;
  walk_tree_without_duplicates (&type, min_vis_r, &vis);
  return vis;
}
