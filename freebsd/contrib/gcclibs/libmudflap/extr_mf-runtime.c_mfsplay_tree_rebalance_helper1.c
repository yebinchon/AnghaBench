
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mfsplay_tree_node ;



__attribute__((used)) static int
mfsplay_tree_rebalance_helper1 (mfsplay_tree_node n, void *array_ptr)
{
  mfsplay_tree_node **p = array_ptr;
  *(*p) = n;
  (*p)++;
  return 0;
}
