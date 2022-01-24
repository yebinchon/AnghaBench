#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ui_file {int dummy; } ;
struct cmd_list_element {scalar_t__ abbrev_flag; int class; char* prefixname; struct cmd_list_element** prefixlist; int /*<<< orphan*/  doc; int /*<<< orphan*/  name; int /*<<< orphan*/ * func; struct cmd_list_element* next; } ;
typedef  enum command_class { ____Placeholder_command_class } command_class ;

/* Variables and functions */
 int all_classes ; 
 int all_commands ; 
 int /*<<< orphan*/  FUNC0 (struct ui_file*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_file*,int /*<<< orphan*/ ) ; 

void
FUNC3 (struct cmd_list_element *list, enum command_class class,
	       char *prefix, int recurse, struct ui_file *stream)
{
  struct cmd_list_element *c;

  for (c = list; c; c = c->next)
    {
      if (c->abbrev_flag == 0 &&
	  (class == all_commands
	   || (class == all_classes && c->func == NULL)
	   || (class == c->class && c->func != NULL)))
	{
	  FUNC0 (stream, "%s%s -- ", prefix, c->name);
	  FUNC2 (stream, c->doc);
	  FUNC1 ("\n", stream);
	}
      if (recurse
	  && c->prefixlist != 0
	  && c->abbrev_flag == 0)
	FUNC3 (*c->prefixlist, class, c->prefixname, 1, stream);
    }
}