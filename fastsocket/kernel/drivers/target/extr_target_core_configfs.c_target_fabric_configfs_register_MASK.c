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
struct target_fabric_configfs {int /*<<< orphan*/  tf_subsys; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct target_fabric_configfs*) ; 

int FUNC3(
	struct target_fabric_configfs *tf)
{
	int ret;

	if (!tf) {
		FUNC1("Unable to locate target_fabric_configfs"
			" pointer\n");
		return -EINVAL;
	}
	if (!tf->tf_subsys) {
		FUNC1("Unable to target struct config_subsystem"
			" pointer\n");
		return -EINVAL;
	}
	ret = FUNC2(tf);
	if (ret < 0)
		return ret;

	FUNC0("<<<<<<<<<<<<<<<<<<<<<< END FABRIC API >>>>>>>>>>>>"
		">>>>>>>>>>\n");
	return 0;
}