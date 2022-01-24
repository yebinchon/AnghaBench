#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 TYPE_1__ sep_cdev ; 
 int /*<<< orphan*/  sep_devno ; 
 int /*<<< orphan*/  sep_file_operations ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(void)
{
	int ret_val = FUNC0(&sep_devno, 0, 1, "sep_sec_driver");
	if (ret_val) {
		FUNC3("sep: major number allocation failed, retval is %d\n",
								ret_val);
		return ret_val;
	}
	/* init cdev */
	FUNC2(&sep_cdev, &sep_file_operations);
	sep_cdev.owner = THIS_MODULE;

	/* register the driver with the kernel */
	ret_val = FUNC1(&sep_cdev, sep_devno, 1);
	if (ret_val) {
		FUNC3("sep_driver:cdev_add failed, retval is %d\n", ret_val);
		/* unregister dev numbers */
		FUNC4(sep_devno, 1);
	}
	return ret_val;
}