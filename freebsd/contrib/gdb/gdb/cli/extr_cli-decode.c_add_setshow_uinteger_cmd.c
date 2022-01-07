
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;
typedef enum command_class { ____Placeholder_command_class } command_class ;
typedef int cmd_sfunc_ftype ;


 int add_setshow_cmd_full (char*,int,int ,unsigned int*,char*,char*,int *,int *,struct cmd_list_element**,struct cmd_list_element**,int *,int *) ;
 int var_uinteger ;

void
add_setshow_uinteger_cmd (char *name,
     enum command_class class,
     unsigned int *var, char *set_doc, char *show_doc,
     cmd_sfunc_ftype *set_func,
     cmd_sfunc_ftype *show_func,
     struct cmd_list_element **set_list,
     struct cmd_list_element **show_list)
{
  add_setshow_cmd_full (name, class, var_uinteger, var,
   set_doc, show_doc,
   set_func, show_func,
   set_list, show_list,
   ((void*)0), ((void*)0));
}
