
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NULL_TREE ;
 scalar_t__ heapvar_for_stmt ;
 scalar_t__ htab_create_ggc (int,int ,int ,int *) ;
 int nonlocal_all ;
 int tree_map_eq ;
 int tree_map_hash ;

void
init_alias_heapvars (void)
{
  if (!heapvar_for_stmt)
    heapvar_for_stmt = htab_create_ggc (11, tree_map_hash, tree_map_eq,
     ((void*)0));
  nonlocal_all = NULL_TREE;
}
