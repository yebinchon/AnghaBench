
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ splay_tree_key ;



int
splay_tree_compare_ints (splay_tree_key k1, splay_tree_key k2)
{
  if ((int) k1 < (int) k2)
    return -1;
  else if ((int) k1 > (int) k2)
    return 1;
  else
    return 0;
}
