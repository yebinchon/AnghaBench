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
 int ENODEV ; 
 int /*<<< orphan*/  WATCHDOG_MINOR ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mpc8xxx_wdt_miscdev ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  wd_base ; 

__attribute__((used)) static int FUNC2(void)
{
	int ret;

	if (!wd_base)
		return -ENODEV;

	ret = FUNC0(&mpc8xxx_wdt_miscdev);
	if (ret) {
		FUNC1("cannot register miscdev on minor=%d (err=%d)\n",
			WATCHDOG_MINOR, ret);
		return ret;
	}
	return 0;
}