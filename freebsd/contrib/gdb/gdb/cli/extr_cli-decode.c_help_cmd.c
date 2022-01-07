
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ui_file {int dummy; } ;
struct cmd_list_element {char* doc; char* prefixname; TYPE_2__* hook_post; TYPE_1__* hook_pre; int class; int * func; struct cmd_list_element** prefixlist; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int name; } ;


 int all_classes ;
 int all_commands ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 int fputs_filtered (char*,struct ui_file*) ;
 int help_all (struct ui_file*) ;
 int help_list (struct cmd_list_element*,char*,int ,struct ui_file*) ;
 struct cmd_list_element* lookup_cmd (char**,struct cmd_list_element*,char*,int ,int ) ;
 scalar_t__ strcmp (char*,char*) ;

void
help_cmd (char *command, struct ui_file *stream)
{
  struct cmd_list_element *c;
  extern struct cmd_list_element *cmdlist;

  if (!command)
    {
      help_list (cmdlist, "", all_classes, stream);
      return;
    }

  if (strcmp (command, "all") == 0)
    {
      help_all (stream);
      return;
    }

  c = lookup_cmd (&command, cmdlist, "", 0, 0);

  if (c == 0)
    return;
  fputs_filtered (c->doc, stream);
  fputs_filtered ("\n", stream);

  if (c->prefixlist == 0 && c->func != ((void*)0))
    return;
  fprintf_filtered (stream, "\n");


  if (c->prefixlist)
    help_list (*c->prefixlist, c->prefixname, all_commands, stream);


  if (c->func == ((void*)0))
    help_list (cmdlist, "", c->class, stream);

  if (c->hook_pre || c->hook_post)
    fprintf_filtered (stream,
                      "\nThis command has a hook (or hooks) defined:\n");

  if (c->hook_pre)
    fprintf_filtered (stream,
                      "\tThis command is run after  : %s (pre hook)\n",
                    c->hook_pre->name);
  if (c->hook_post)
    fprintf_filtered (stream,
                      "\tThis command is run before : %s (post hook)\n",
                    c->hook_post->name);
}
