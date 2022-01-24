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
 struct cmd_list_element* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_list_element*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_files ; 
 int /*<<< orphan*/  cmdlist ; 
 int /*<<< orphan*/  core_file_command ; 
 int /*<<< orphan*/  filename_completer ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  gnutarget_string ; 
 int /*<<< orphan*/  FUNC4 (struct cmd_list_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cmd_list_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  set_gnutarget_command ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  showlist ; 
 int /*<<< orphan*/  var_string_noescape ; 

void
FUNC7 (void)
{
  struct cmd_list_element *c;
  c = FUNC0 ("core-file", class_files, core_file_command,
	       "Use FILE as core dump for examining memory and registers.\n\
No arg means have no core file.  This command has been superseded by the\n\
`target core' and `detach' commands.", &cmdlist);
  FUNC4 (c, filename_completer);

  c = FUNC1 ("gnutarget", class_files, var_string_noescape,
		   (char *) &gnutarget_string,
		   "Set the current BFD target.\n\
Use `set gnutarget auto' to specify automatic detection.",
		   &setlist);
  FUNC5 (c, set_gnutarget_command);
  FUNC2 (c, &showlist);

  if (FUNC3 ("GNUTARGET"))
    FUNC6 (FUNC3 ("GNUTARGET"));
  else
    FUNC6 ("auto");
}