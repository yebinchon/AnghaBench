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
struct cmd_list_element {int dummy; } ;

/* Variables and functions */
 struct cmd_list_element* FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_support ; 
 int /*<<< orphan*/  cmdlist ; 
 int /*<<< orphan*/  interpreter_completer ; 
 int /*<<< orphan*/  interpreter_exec_cmd ; 
 int /*<<< orphan*/  FUNC1 (struct cmd_list_element*,int /*<<< orphan*/ ) ; 

void
FUNC2 (void)
{
  struct cmd_list_element *c;

  c = FUNC0 ("interpreter-exec", class_support,
	       interpreter_exec_cmd,
	       "Execute a command in an interpreter.  It takes two arguments:\n\
The first argument is the name of the interpreter to use.\n\
The second argument is the command to execute.\n", &cmdlist);
  FUNC1 (c, interpreter_completer);
}