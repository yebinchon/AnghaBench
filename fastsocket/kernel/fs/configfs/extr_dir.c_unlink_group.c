
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_group {int cg_item; int * cg_subsys; struct config_group** default_groups; } ;


 int unlink_obj (int *) ;

__attribute__((used)) static void unlink_group(struct config_group *group)
{
 int i;
 struct config_group *new_group;

 if (group->default_groups) {
  for (i = 0; group->default_groups[i]; i++) {
   new_group = group->default_groups[i];
   unlink_group(new_group);
  }
 }

 group->cg_subsys = ((void*)0);
 unlink_obj(&group->cg_item);
}
