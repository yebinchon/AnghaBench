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
struct target_fabric_configfs {struct configfs_subsystem* tf_subsys; int /*<<< orphan*/ * tf_module; int /*<<< orphan*/  tf_name; int /*<<< orphan*/  tf_list; int /*<<< orphan*/  tf_access_cnt; } ;
struct configfs_subsystem {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_tf_lock ; 
 int /*<<< orphan*/  FUNC2 (struct target_fabric_configfs*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

void FUNC8(
	struct target_fabric_configfs *tf)
{
	struct configfs_subsystem *su;

	if (!tf) {
		FUNC7("Unable to locate passed target_fabric_"
			"configfs\n");
		return;
	}
	su = tf->tf_subsys;
	if (!su) {
		FUNC7("Unable to locate passed tf->tf_subsys"
			" pointer\n");
		return;
	}
	FUNC6("<<<<<<<<<<<<<<<<<<<<<< BEGIN FABRIC API >>>>>>>>>>"
			">>>>>>>>>>>>\n");
	FUNC4(&g_tf_lock);
	if (FUNC1(&tf->tf_access_cnt)) {
		FUNC5(&g_tf_lock);
		FUNC7("Non zero tf->tf_access_cnt for fabric %s\n",
			tf->tf_name);
		FUNC0();
	}
	FUNC3(&tf->tf_list);
	FUNC5(&g_tf_lock);

	FUNC6("Target_Core_ConfigFS: DEREGISTER -> Releasing tf:"
			" %s\n", tf->tf_name);
	tf->tf_module = NULL;
	tf->tf_subsys = NULL;
	FUNC2(tf);

	FUNC6("<<<<<<<<<<<<<<<<<<<<<< END FABRIC API >>>>>>>>>>>>>>>>>"
			">>>>>\n");
}