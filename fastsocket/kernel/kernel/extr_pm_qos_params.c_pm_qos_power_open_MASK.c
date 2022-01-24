#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file {void* private_data; } ;
struct TYPE_2__ {int pid; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  PM_QOS_DEFAULT_VALUE ; 
 TYPE_1__* current ; 
 long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  name ; 
 int FUNC3 (long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *filp)
{
	int ret;
	long pm_qos_class;

	FUNC2();
	pm_qos_class = FUNC0(FUNC1(inode));
	if (pm_qos_class >= 0) {
		filp->private_data = (void *)pm_qos_class;
		FUNC4(name, "process_%d", current->pid);
		ret = FUNC3(pm_qos_class, name,
					PM_QOS_DEFAULT_VALUE);
		if (ret >= 0) {
			FUNC5();
			return 0;
		}
	}
	FUNC5();

	return -EPERM;
}