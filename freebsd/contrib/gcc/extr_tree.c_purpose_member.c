
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_PURPOSE (scalar_t__) ;

tree
purpose_member (tree elem, tree list)
{
  while (list)
    {
      if (elem == TREE_PURPOSE (list))
 return list;
      list = TREE_CHAIN (list);
    }
  return NULL_TREE;
}
