
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
typedef int htab_t ;


 int INSERT ;
 void** htab_find_slot (int ,int *,int ) ;
 scalar_t__ tree_node_can_be_shared (int *) ;

__attribute__((used)) static tree
verify_node_sharing (tree * tp, int *walk_subtrees, void *data)
{
  htab_t htab = (htab_t) data;
  void **slot;

  if (tree_node_can_be_shared (*tp))
    {
      *walk_subtrees = 0;
      return ((void*)0);
    }

  slot = htab_find_slot (htab, *tp, INSERT);
  if (*slot)
    return (tree) *slot;
  *slot = *tp;

  return ((void*)0);
}
