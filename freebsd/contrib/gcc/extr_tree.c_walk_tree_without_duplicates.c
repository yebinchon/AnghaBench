
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int walk_tree_fn ;
typedef int tree ;
struct pointer_set_t {int dummy; } ;


 struct pointer_set_t* pointer_set_create () ;
 int pointer_set_destroy (struct pointer_set_t*) ;
 int walk_tree (int *,int ,void*,struct pointer_set_t*) ;

tree
walk_tree_without_duplicates (tree *tp, walk_tree_fn func, void *data)
{
  tree result;
  struct pointer_set_t *pset;

  pset = pointer_set_create ();
  result = walk_tree (tp, func, data, pset);
  pointer_set_destroy (pset);
  return result;
}
