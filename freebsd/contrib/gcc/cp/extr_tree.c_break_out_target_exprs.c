
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int * splay_tree ;


 int bot_manip ;
 int bot_replace ;
 int splay_tree_compare_pointers ;
 int splay_tree_delete (int *) ;
 int * splay_tree_new (int ,int *,int *) ;
 int walk_tree (int *,int ,int *,int *) ;

tree
break_out_target_exprs (tree t)
{
  static int target_remap_count;
  static splay_tree target_remap;

  if (!target_remap_count++)
    target_remap = splay_tree_new (splay_tree_compare_pointers,
                                    ((void*)0),
                                      ((void*)0));
  walk_tree (&t, bot_manip, target_remap, ((void*)0));
  walk_tree (&t, bot_replace, target_remap, ((void*)0));

  if (!--target_remap_count)
    {
      splay_tree_delete (target_remap);
      target_remap = ((void*)0);
    }

  return t;
}
