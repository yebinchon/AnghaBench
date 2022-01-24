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
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_info ; 
 int /*<<< orphan*/  cmdlist ; 
 int /*<<< orphan*/  info_macro_command ; 
 int /*<<< orphan*/  infolist ; 
 int /*<<< orphan*/  macro_command ; 
 int /*<<< orphan*/  macro_define_command ; 
 int /*<<< orphan*/  macro_expand_command ; 
 int /*<<< orphan*/  macro_expand_once_command ; 
 int /*<<< orphan*/  macro_list_command ; 
 int /*<<< orphan*/  macro_undef_command ; 
 int /*<<< orphan*/  macrolist ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  no_class ; 
 int /*<<< orphan*/  user_macros ; 

void
FUNC4 (void)
{
  struct cmd_list_element *c;

  /* We introduce a new command prefix, `macro', under which we'll put
     the various commands for working with preprocessor macros.  */
  FUNC2
    ("macro", class_info, macro_command,
     "Prefix for commands dealing with C preprocessor macros.",
     &macrolist, "macro ", 0, &cmdlist);

  FUNC1
    ("expand", no_class, macro_expand_command,
     "Fully expand any C/C++ preprocessor macro invocations in EXPRESSION.\n"
     "Show the expanded expression.",
     &macrolist);
  FUNC0 ("exp", "expand", no_class, 1, &macrolist);
  FUNC1
    ("expand-once", no_class, macro_expand_once_command,
     "Expand C/C++ preprocessor macro invocations appearing directly in"
     " EXPRESSION.\n"
     "Show the expanded expression.\n"
     "\n"
     "This command differs from `macro expand' in that it only expands macro\n"
     "invocations that appear directly in EXPRESSION; if expanding a macro\n"
     "introduces further macro invocations, those are left unexpanded.\n"
     "\n"
     "`macro expand-once' helps you see how a particular macro expands,\n"
     "whereas `macro expand' shows you how all the macros involved in an\n"
     "expression work together to yield a pre-processed expression.",
     &macrolist);
  FUNC0 ("exp1", "expand-once", no_class, 1, &macrolist);

  FUNC1
    ("macro", no_class, info_macro_command,
     "Show the definition of MACRO, and its source location.",
     &infolist);

  FUNC1
    ("define", no_class, macro_define_command,
     "Define a new C/C++ preprocessor macro.\n"
     "The GDB command `macro define DEFINITION' is equivalent to placing a\n"
     "preprocessor directive of the form `#define DEFINITION' such that the\n"
     "definition is visible in all the inferior's source files.\n"
     "For example:\n"
     "  (gdb) macro define PI (3.1415926)\n"
     "  (gdb) macro define MIN(x,y) ((x) < (y) ? (x) : (y))",
     &macrolist);

  FUNC1
    ("undef", no_class, macro_undef_command,
     "Remove the definition of the C/C++ preprocessor macro with the"
     " given name.",
     &macrolist);

  FUNC1
    ("list", no_class, macro_list_command,
     "List all the macros defined using the `macro define' command.",
     &macrolist);

  user_macros = FUNC3 (0, 0);
}