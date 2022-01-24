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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  _autofs_dev_ioctl_misc ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(void)
{
	int r;

	r = FUNC1(&_autofs_dev_ioctl_misc);
	if (r) {
		FUNC0("misc_register failed for control device");
		return r;
	}

	return 0;
}