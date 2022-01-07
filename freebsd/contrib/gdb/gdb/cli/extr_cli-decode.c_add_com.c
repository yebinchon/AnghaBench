
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;
typedef enum command_class { ____Placeholder_command_class } command_class ;


 struct cmd_list_element* add_cmd (char*,int,void (*) (char*,int),char*,int *) ;
 int cmdlist ;

struct cmd_list_element *
add_com (char *name, enum command_class class, void (*fun) (char *, int),
  char *doc)
{
  return add_cmd (name, class, fun, doc, &cmdlist);
}
