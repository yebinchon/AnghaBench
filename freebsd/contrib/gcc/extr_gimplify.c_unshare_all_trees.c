
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int copy_if_shared_r ;
 int unmark_visited_r ;
 int walk_tree (int *,int ,int *,int *) ;

__attribute__((used)) static void
unshare_all_trees (tree t)
{
  walk_tree (&t, copy_if_shared_r, ((void*)0), ((void*)0));
  walk_tree (&t, unmark_visited_r, ((void*)0), ((void*)0));
}
