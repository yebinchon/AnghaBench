
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int abbrev_flag; struct cmd_list_element* cmd_pointer; int allow_unknown; int prefixname; int prefixlist; int function; int func; int doc; } ;
typedef enum command_class { ____Placeholder_command_class } command_class ;


 struct cmd_list_element* add_cmd (char*,int,int *,int ,struct cmd_list_element**) ;
 scalar_t__ alloca (scalar_t__) ;
 int delete_cmd (char*,struct cmd_list_element**) ;
 struct cmd_list_element* lookup_cmd (char**,struct cmd_list_element*,char*,int,int) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

struct cmd_list_element *
add_alias_cmd (char *name, char *oldname, enum command_class class,
        int abbrev_flag, struct cmd_list_element **list)
{

  char *copied_name;
  struct cmd_list_element *old;
  struct cmd_list_element *c;
  copied_name = (char *) alloca (strlen (oldname) + 1);
  strcpy (copied_name, oldname);
  old = lookup_cmd (&copied_name, *list, "", 1, 1);

  if (old == 0)
    {
      delete_cmd (name, list);
      return 0;
    }

  c = add_cmd (name, class, ((void*)0), old->doc, list);

  c->func = old->func;
  c->function = old->function;
  c->prefixlist = old->prefixlist;
  c->prefixname = old->prefixname;
  c->allow_unknown = old->allow_unknown;
  c->abbrev_flag = abbrev_flag;
  c->cmd_pointer = old;
  return c;
}
