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
 struct cmd_list_element* FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cmd_list_element*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  filename_completer ; 
 int /*<<< orphan*/  no_class ; 
 int /*<<< orphan*/  procfs_filename ; 
 int /*<<< orphan*/  procfs_trace ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_list_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cmd_list_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  set_procfs_file_cmd ; 
 int /*<<< orphan*/  set_procfs_trace_cmd ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  showlist ; 
 int /*<<< orphan*/  var_boolean ; 
 int /*<<< orphan*/  var_filename ; 

void
FUNC4 (void)
{
  struct cmd_list_element *c;

  c = FUNC0 ("procfs-trace", no_class,
		   var_boolean, (char *) &procfs_trace, 
		   "Set tracing for /proc api calls.\n", &setlist);

  FUNC1 (c, &showlist);
  FUNC3 (c, set_procfs_trace_cmd);
  FUNC2 (c, filename_completer);

  c = FUNC0 ("procfs-file", no_class, var_filename,
		   (char *) &procfs_filename, 
		   "Set filename for /proc tracefile.\n", &setlist);

  FUNC1 (c, &showlist);
  FUNC3 (c, set_procfs_file_cmd);
}