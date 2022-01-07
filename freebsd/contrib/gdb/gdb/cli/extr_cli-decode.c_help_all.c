
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct cmd_list_element {char* prefixname; int class; int * func; struct cmd_list_element** prefixlist; scalar_t__ abbrev_flag; struct cmd_list_element* next; } ;


 int all_commands ;
 int help_cmd_list (struct cmd_list_element*,int ,char*,int ,struct ui_file*) ;

__attribute__((used)) static void
help_all (struct ui_file *stream)
{
  struct cmd_list_element *c;
  extern struct cmd_list_element *cmdlist;

  for (c = cmdlist; c; c = c->next)
    {
      if (c->abbrev_flag)
        continue;

      if (c->prefixlist)
        help_cmd_list (*c->prefixlist, all_commands, c->prefixname, 0, stream);


      else if (c->func == ((void*)0))
        help_cmd_list (cmdlist, c->class, "", 0, stream);
    }
}
