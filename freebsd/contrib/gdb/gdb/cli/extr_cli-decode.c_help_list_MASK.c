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
struct cmd_list_element {int dummy; } ;
typedef  enum command_class { ____Placeholder_command_class } command_class ;

/* Variables and functions */
 int all_classes ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC3 (struct cmd_list_element*,int,char*,int,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void
FUNC8 (struct cmd_list_element *list, char *cmdtype,
	   enum command_class class, struct ui_file *stream)
{
  int len;
  char *cmdtype1, *cmdtype2;

  /* If CMDTYPE is "foo ", CMDTYPE1 gets " foo" and CMDTYPE2 gets "foo sub"  */
  len = FUNC5 (cmdtype);
  cmdtype1 = (char *) FUNC0 (len + 1);
  cmdtype1[0] = 0;
  cmdtype2 = (char *) FUNC0 (len + 4);
  cmdtype2[0] = 0;
  if (len)
    {
      cmdtype1[0] = ' ';
      FUNC6 (cmdtype1 + 1, cmdtype, len - 1);
      cmdtype1[len] = 0;
      FUNC6 (cmdtype2, cmdtype, len - 1);
      FUNC4 (cmdtype2 + len - 1, " sub");
    }

  if (class == all_classes)
    FUNC1 (stream, "List of classes of %scommands:\n\n", cmdtype2);
  else
    FUNC1 (stream, "List of %scommands:\n\n", cmdtype2);

  FUNC3 (list, class, cmdtype, (int) class >= 0, stream);

  if (class == all_classes)
    {
      FUNC1 (stream, "\n\
Type \"help%s\" followed by a class name for a list of commands in ",
			cmdtype1);
      FUNC7 ("");
      FUNC1 (stream, "that class.");
    }

  FUNC1 (stream, "\nType \"help%s\" followed by %scommand name ",
		    cmdtype1, cmdtype2);
  FUNC7 ("");
  FUNC2 ("for ", stream);
  FUNC7 ("");
  FUNC2 ("full ", stream);
  FUNC7 ("");
  FUNC2 ("documentation.\n", stream);
  FUNC2 ("Command name abbreviations are allowed if unambiguous.\n",
		  stream);
}