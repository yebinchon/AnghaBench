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
 struct cmd_list_element* FUNC1 (struct cmd_list_element*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_maintenance ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_list_element*,char*) ; 
 int /*<<< orphan*/  gdbarch_debug ; 
 int /*<<< orphan*/  setdebuglist ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  showdebuglist ; 
 int /*<<< orphan*/  showlist ; 
 int /*<<< orphan*/  var_zinteger ; 

void
FUNC3 (void)
{
  struct cmd_list_element *c;

  FUNC1 (FUNC0 ("arch",
				  class_maintenance,
				  var_zinteger,
				  (char *)&gdbarch_debug,
				  "Set architecture debugging.\n\
When non-zero, architecture debugging is enabled.", &setdebuglist),
		     &showdebuglist);
  c = FUNC0 ("archdebug",
		   class_maintenance,
		   var_zinteger,
		   (char *)&gdbarch_debug,
		   "Set architecture debugging.\n\
When non-zero, architecture debugging is enabled.", &setlist);

  FUNC2 (c, "set debug arch");
  FUNC2 (FUNC1 (c, &showlist), "show debug arch");
}