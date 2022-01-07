
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;
typedef enum command_class { ____Placeholder_command_class } command_class ;


 struct cmd_list_element* add_alias_cmd (char*,char*,int,int,int *) ;
 int cmdlist ;

struct cmd_list_element *
add_com_alias (char *name, char *oldname, enum command_class class,
        int abbrev_flag)
{
  return add_alias_cmd (name, oldname, class, abbrev_flag, &cmdlist);
}
