
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_alias_cmd (char*,char*,int ,int,int *) ;
 int add_cmd (char*,int ,int ,char*,int *) ;
 int add_prefix_cmd (char*,int ,int ,char*,int *,char*,int ,int *) ;
 int class_maintenance ;
 int first_component_command ;
 int maint_cplus_cmd_list ;
 int maint_cplus_command ;
 int maintenancelist ;

void
_initialize_cp_support (void)
{
  add_prefix_cmd ("cplus", class_maintenance, maint_cplus_command,
    "C++ maintenance commands.", &maint_cplus_cmd_list,
    "maintenance cplus ", 0, &maintenancelist);
  add_alias_cmd ("cp", "cplus", class_maintenance, 1, &maintenancelist);

  add_cmd ("first_component", class_maintenance, first_component_command,
    "Print the first class/namespace component of NAME.",
    &maint_cplus_cmd_list);

}
