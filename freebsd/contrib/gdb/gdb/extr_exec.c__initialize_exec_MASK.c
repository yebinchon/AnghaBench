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
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_files ; 
 int /*<<< orphan*/  class_support ; 
 int /*<<< orphan*/  cmdlist ; 
 int /*<<< orphan*/  dbx_commands ; 
 int /*<<< orphan*/  exec_file_command ; 
 int /*<<< orphan*/  exec_ops ; 
 int /*<<< orphan*/  file_command ; 
 int /*<<< orphan*/  filename_completer ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct cmd_list_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  set_section_command ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  showlist ; 
 int /*<<< orphan*/  var_boolean ; 
 int /*<<< orphan*/  write_files ; 

void
FUNC7 (void)
{
  struct cmd_list_element *c;

  FUNC5 ();

  if (!dbx_commands)
    {
      c = FUNC0 ("file", class_files, file_command,
		   "Use FILE as program to be debugged.\n\
It is read for its symbols, for getting the contents of pure memory,\n\
and it is the program executed when you use the `run' command.\n\
If FILE cannot be found as specified, your execution directory path\n\
($PATH) is searched for a command of that name.\n\
No arg means to have no executable file and no symbols.", &cmdlist);
      FUNC6 (c, filename_completer);
    }

  c = FUNC0 ("exec-file", class_files, exec_file_command,
	       "Use FILE as program for getting contents of pure memory.\n\
If FILE cannot be found as specified, your execution directory path\n\
is searched for a command of that name.\n\
No arg means have no executable file.", &cmdlist);
  FUNC6 (c, filename_completer);

  FUNC1 ("section", class_files, set_section_command,
	   "Change the base address of section SECTION of the exec file to ADDR.\n\
This can be used if the exec file does not contain section addresses,\n\
(such as in the a.out format), or when the addresses specified in the\n\
file itself are wrong.  Each section must be changed separately.  The\n\
``info files'' command lists all the sections and their addresses.");

  FUNC3
    (FUNC2 ("write", class_support, var_boolean, (char *) &write_files,
		  "Set writing into executable and core files.",
		  &setlist),
     &showlist);

  FUNC4 (&exec_ops);
}