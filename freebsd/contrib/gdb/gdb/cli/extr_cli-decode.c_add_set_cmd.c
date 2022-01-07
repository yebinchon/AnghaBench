
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var_types ;
struct cmd_list_element {int dummy; } ;
typedef enum command_class { ____Placeholder_command_class } command_class ;


 struct cmd_list_element* add_set_or_show_cmd (char*,int ,int,int ,void*,char*,struct cmd_list_element**) ;
 int set_cmd ;

struct cmd_list_element *
add_set_cmd (char *name,
      enum command_class class,
      var_types var_type,
      void *var,
      char *doc,
      struct cmd_list_element **list)
{
  return add_set_or_show_cmd (name, set_cmd, class, var_type, var, doc, list);
}
