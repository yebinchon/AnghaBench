
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {char* prefixname; int allow_unknown; int abbrev_flag; struct cmd_list_element** prefixlist; } ;
typedef enum command_class { ____Placeholder_command_class } command_class ;


 struct cmd_list_element* add_cmd (char*,int,void (*) (char*,int),char*,struct cmd_list_element**) ;

struct cmd_list_element *
add_abbrev_prefix_cmd (char *name, enum command_class class,
         void (*fun) (char *, int), char *doc,
         struct cmd_list_element **prefixlist, char *prefixname,
         int allow_unknown, struct cmd_list_element **list)
{
  struct cmd_list_element *c = add_cmd (name, class, fun, doc, list);
  c->prefixlist = prefixlist;
  c->prefixname = prefixname;
  c->allow_unknown = allow_unknown;
  c->abbrev_flag = 1;
  return c;
}
