
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ TREE_CHAIN (scalar_t__) ;

int
chain_member (tree elem, tree chain)
{
  while (chain)
    {
      if (elem == chain)
 return 1;
      chain = TREE_CHAIN (chain);
    }

  return 0;
}
