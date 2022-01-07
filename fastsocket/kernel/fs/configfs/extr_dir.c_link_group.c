
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configfs_subsystem {int dummy; } ;
struct config_group {struct config_group** default_groups; struct configfs_subsystem* cg_subsys; int cg_item; } ;


 int BUG () ;
 scalar_t__ configfs_is_root (int *) ;
 int link_obj (int *,int *) ;
 struct configfs_subsystem* to_configfs_subsystem (struct config_group*) ;

__attribute__((used)) static void link_group(struct config_group *parent_group, struct config_group *group)
{
 int i;
 struct config_group *new_group;
 struct configfs_subsystem *subsys = ((void*)0);

 link_obj(&parent_group->cg_item, &group->cg_item);

 if (parent_group->cg_subsys)
  subsys = parent_group->cg_subsys;
 else if (configfs_is_root(&parent_group->cg_item))
  subsys = to_configfs_subsystem(group);
 else
  BUG();
 group->cg_subsys = subsys;

 if (group->default_groups) {
  for (i = 0; group->default_groups[i]; i++) {
   new_group = group->default_groups[i];
   link_group(group, new_group);
  }
 }
}
