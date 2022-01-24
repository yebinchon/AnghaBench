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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  class_maintenance ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  gnu_debug_flag ; 
 int /*<<< orphan*/  gnu_ops ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  maintenancelist ; 
 int /*<<< orphan*/  proc_server ; 
 int /*<<< orphan*/  var_boolean ; 

void
FUNC6 (void)
{
  proc_server = FUNC4 ();
  
  FUNC5 ();
  FUNC1 (&gnu_ops);

  FUNC2 ();
  FUNC3 ();
  FUNC0 ("gnu-debug", class_maintenance,
	       var_boolean, (char *) &gnu_debug_flag,
	       "Set debugging output for the gnu backend.", &maintenancelist);
}