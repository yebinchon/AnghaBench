
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* mfsplay_tree_node ;
struct TYPE_4__ {struct TYPE_4__* right; struct TYPE_4__* left; } ;



__attribute__((used)) static mfsplay_tree_node
mfsplay_tree_rebalance_helper2 (mfsplay_tree_node * array, unsigned low,
                              unsigned high)
{
  unsigned middle = low + (high - low) / 2;
  mfsplay_tree_node n = array[middle];



  if (low + 1 <= middle)
    n->left = mfsplay_tree_rebalance_helper2 (array, low, middle - 1);
  else
    n->left = ((void*)0);

  if (middle + 1 <= high)
    n->right = mfsplay_tree_rebalance_helper2 (array, middle + 1, high);
  else
    n->right = ((void*)0);

  return n;
}
