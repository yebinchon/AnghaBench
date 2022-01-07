
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dt_info {int dt; } ;


 int any_local_fixup_tree (struct dt_info*,int ) ;
 int build_root_node (int ,char*) ;
 int generate_local_fixups_tree_internal (struct dt_info*,int ,int ) ;

void generate_local_fixups_tree(struct dt_info *dti, char *name)
{
 if (!any_local_fixup_tree(dti, dti->dt))
  return;
 generate_local_fixups_tree_internal(dti, build_root_node(dti->dt, name),
         dti->dt);
}
