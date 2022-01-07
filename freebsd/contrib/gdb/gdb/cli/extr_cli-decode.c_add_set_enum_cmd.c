
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {char const** enums; } ;
typedef enum command_class { ____Placeholder_command_class } command_class ;


 struct cmd_list_element* add_set_cmd (char*,int,int ,char const**,char*,struct cmd_list_element**) ;
 int var_enum ;

struct cmd_list_element *
add_set_enum_cmd (char *name,
    enum command_class class,
    const char *enumlist[],
    const char **var,
    char *doc,
    struct cmd_list_element **list)
{
  struct cmd_list_element *c
  = add_set_cmd (name, class, var_enum, var, doc, list);
  c->enums = enumlist;

  return c;
}
