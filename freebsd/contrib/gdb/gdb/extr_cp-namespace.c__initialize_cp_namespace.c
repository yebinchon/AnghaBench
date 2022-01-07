
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_cmd (char*,int ,int ,char*,int *) ;
 int class_maintenance ;
 int maint_cplus_cmd_list ;
 int maintenance_cplus_namespace ;

void
_initialize_cp_namespace (void)
{
  add_cmd ("namespace", class_maintenance, maintenance_cplus_namespace,
    "Print the list of possible C++ namespaces.",
    &maint_cplus_cmd_list);
}
