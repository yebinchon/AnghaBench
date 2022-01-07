
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ splay_tree_key ;



int
splay_tree_compare_pointers (splay_tree_key k1, splay_tree_key k2)
{
  if ((char*) k1 < (char*) k2)
    return -1;
  else if ((char*) k1 > (char*) k2)
    return 1;
  else
    return 0;
}
