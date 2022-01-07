
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int count_trees_r ;
 int walk_tree_without_duplicates (int *,int ,int*) ;

int
count_trees (tree t)
{
  int n_trees = 0;
  walk_tree_without_duplicates (&t, count_trees_r, &n_trees);
  return n_trees;
}
