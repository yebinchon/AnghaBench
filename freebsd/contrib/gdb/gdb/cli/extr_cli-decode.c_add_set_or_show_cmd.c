
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var_types ;
struct cmd_list_element {int type; void* var; int var_type; } ;
typedef enum command_class { ____Placeholder_command_class } command_class ;
typedef enum cmd_types { ____Placeholder_cmd_types } cmd_types ;


 struct cmd_list_element* add_cmd (char*,int,int *,char*,struct cmd_list_element**) ;
 int empty_sfunc ;
 int gdb_assert (int) ;
 int set_cmd ;
 int set_cmd_sfunc (struct cmd_list_element*,int ) ;
 int show_cmd ;

__attribute__((used)) static struct cmd_list_element *
add_set_or_show_cmd (char *name,
       enum cmd_types type,
       enum command_class class,
       var_types var_type,
       void *var,
       char *doc,
       struct cmd_list_element **list)
{
  struct cmd_list_element *c = add_cmd (name, class, ((void*)0), doc, list);
  gdb_assert (type == set_cmd || type == show_cmd);
  c->type = type;
  c->var_type = var_type;
  c->var = var;


  set_cmd_sfunc (c, empty_sfunc);
  return c;
}
