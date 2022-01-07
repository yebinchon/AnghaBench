
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mfsplay_tree_node ;
typedef TYPE_1__* mfsplay_tree ;
struct TYPE_4__ {int num_keys; int root; } ;


 int mfsplay_tree_foreach (TYPE_1__*,int ,void*) ;
 int mfsplay_tree_free (int *) ;
 int mfsplay_tree_rebalance_helper1 ;
 int mfsplay_tree_rebalance_helper2 (int *,int ,int) ;
 int * mfsplay_tree_xmalloc (int) ;

__attribute__((used)) static void
mfsplay_tree_rebalance (mfsplay_tree sp)
{
  mfsplay_tree_node *all_nodes, *all_nodes_1;

  if (sp->num_keys <= 2)
    return;

  all_nodes = mfsplay_tree_xmalloc (sizeof (mfsplay_tree_node) * sp->num_keys);


  all_nodes_1 = all_nodes;
  mfsplay_tree_foreach (sp, mfsplay_tree_rebalance_helper1,
                      (void *) &all_nodes_1);


  sp->root = mfsplay_tree_rebalance_helper2 (all_nodes, 0, sp->num_keys - 1);

  mfsplay_tree_free (all_nodes);
}
