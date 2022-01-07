
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int htab_create_ggc (int,int ,int ,int ) ;
 int shadowed_var_for_decl ;
 int tree_map_eq ;
 int tree_map_hash ;

void
init_shadowed_var_for_decl (void)
{
  shadowed_var_for_decl = htab_create_ggc (512, tree_map_hash,
        tree_map_eq, 0);
}
