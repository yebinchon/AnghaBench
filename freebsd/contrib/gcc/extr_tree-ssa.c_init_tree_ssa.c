
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* BITMAP_ALLOC (int *) ;
 int NULL_TREE ;
 void* addressable_vars ;
 int aliases_computed_p ;
 void* call_clobbered_vars ;
 void* default_defs ;
 int global_var ;
 void* htab_create_ggc (int,int ,int ,int *) ;
 int init_alias_heapvars () ;
 int init_phinodes () ;
 int init_ssanames () ;
 int int_tree_map_eq ;
 int int_tree_map_hash ;
 void* referenced_vars ;

void
init_tree_ssa (void)
{
  referenced_vars = htab_create_ggc (20, int_tree_map_hash,
         int_tree_map_eq, ((void*)0));
  default_defs = htab_create_ggc (20, int_tree_map_hash, int_tree_map_eq, ((void*)0));
  call_clobbered_vars = BITMAP_ALLOC (((void*)0));
  addressable_vars = BITMAP_ALLOC (((void*)0));
  init_alias_heapvars ();
  init_ssanames ();
  init_phinodes ();
  global_var = NULL_TREE;
  aliases_computed_p = 0;
}
