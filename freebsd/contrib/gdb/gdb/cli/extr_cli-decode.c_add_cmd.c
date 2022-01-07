
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {char* name; int class; char* doc; int * cmd_pointer; int * hookee_post; int * hookee_pre; int * user_commands; int * enums; int var_type; int * var; int type; scalar_t__ abbrev_flag; scalar_t__ allow_unknown; int * prefixname; int * prefixlist; scalar_t__ hook_in; int * hook_post; int * hook_pre; int * pre_show_hook; int * replacement; scalar_t__ flags; struct cmd_list_element* next; } ;
typedef enum command_class { ____Placeholder_command_class } command_class ;


 int delete_cmd (char*,struct cmd_list_element**) ;
 int make_symbol_completion_list ;
 int not_set_cmd ;
 int set_cmd_cfunc (struct cmd_list_element*,void (*) (char*,int)) ;
 int set_cmd_completer (struct cmd_list_element*,int ) ;
 int set_cmd_context (struct cmd_list_element*,int *) ;
 scalar_t__ strcmp (char*,char*) ;
 int var_boolean ;
 scalar_t__ xmalloc (int) ;

struct cmd_list_element *
add_cmd (char *name, enum command_class class, void (*fun) (char *, int),
  char *doc, struct cmd_list_element **list)
{
  struct cmd_list_element *c
  = (struct cmd_list_element *) xmalloc (sizeof (struct cmd_list_element));
  struct cmd_list_element *p;

  delete_cmd (name, list);

  if (*list == ((void*)0) || strcmp ((*list)->name, name) >= 0)
    {
      c->next = *list;
      *list = c;
    }
  else
    {
      p = *list;
      while (p->next && strcmp (p->next->name, name) <= 0)
 {
   p = p->next;
 }
      c->next = p->next;
      p->next = c;
    }

  c->name = name;
  c->class = class;
  set_cmd_cfunc (c, fun);
  set_cmd_context (c, ((void*)0));
  c->doc = doc;
  c->flags = 0;
  c->replacement = ((void*)0);
  c->pre_show_hook = ((void*)0);
  c->hook_pre = ((void*)0);
  c->hook_post = ((void*)0);
  c->hook_in = 0;
  c->prefixlist = ((void*)0);
  c->prefixname = ((void*)0);
  c->allow_unknown = 0;
  c->abbrev_flag = 0;
  set_cmd_completer (c, make_symbol_completion_list);
  c->type = not_set_cmd;
  c->var = ((void*)0);
  c->var_type = var_boolean;
  c->enums = ((void*)0);
  c->user_commands = ((void*)0);
  c->hookee_pre = ((void*)0);
  c->hookee_post = ((void*)0);
  c->cmd_pointer = ((void*)0);

  return c;
}
