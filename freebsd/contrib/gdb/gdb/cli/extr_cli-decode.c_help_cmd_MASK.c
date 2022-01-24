#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ui_file {int dummy; } ;
struct cmd_list_element {char* doc; char* prefixname; TYPE_2__* hook_post; TYPE_1__* hook_pre; int /*<<< orphan*/  class; int /*<<< orphan*/ * func; struct cmd_list_element** prefixlist; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  all_classes ; 
 int /*<<< orphan*/  all_commands ; 
 int /*<<< orphan*/  FUNC0 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_file*) ; 
 int /*<<< orphan*/  FUNC3 (struct cmd_list_element*,char*,int /*<<< orphan*/ ,struct ui_file*) ; 
 struct cmd_list_element* FUNC4 (char**,struct cmd_list_element*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

void
FUNC6 (char *command, struct ui_file *stream)
{
  struct cmd_list_element *c;
  extern struct cmd_list_element *cmdlist;

  if (!command)
    {
      FUNC3 (cmdlist, "", all_classes, stream);
      return;
    }

  if (FUNC5 (command, "all") == 0)
    {
      FUNC2 (stream);
      return;
    }

  c = FUNC4 (&command, cmdlist, "", 0, 0);

  if (c == 0)
    return;

  /* There are three cases here.
     If c->prefixlist is nonzero, we have a prefix command.
     Print its documentation, then list its subcommands.

     If c->func is non NULL, we really have a command.  Print its
     documentation and return.

     If c->func is NULL, we have a class name.  Print its
     documentation (as if it were a command) and then set class to the
     number of this class so that the commands in the class will be
     listed.  */

  FUNC1 (c->doc, stream);
  FUNC1 ("\n", stream);

  if (c->prefixlist == 0 && c->func != NULL)
    return;
  FUNC0 (stream, "\n");

  /* If this is a prefix command, print it's subcommands */
  if (c->prefixlist)
    FUNC3 (*c->prefixlist, c->prefixname, all_commands, stream);

  /* If this is a class name, print all of the commands in the class */
  if (c->func == NULL)
    FUNC3 (cmdlist, "", c->class, stream);

  if (c->hook_pre || c->hook_post)
    FUNC0 (stream,
                      "\nThis command has a hook (or hooks) defined:\n");

  if (c->hook_pre)
    FUNC0 (stream, 
                      "\tThis command is run after  : %s (pre hook)\n",
                    c->hook_pre->name);
  if (c->hook_post)
    FUNC0 (stream, 
                      "\tThis command is run before : %s (post hook)\n",
                    c->hook_post->name);
}