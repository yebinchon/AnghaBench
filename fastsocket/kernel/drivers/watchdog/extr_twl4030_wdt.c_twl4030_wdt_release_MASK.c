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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct twl4030_wdt {int /*<<< orphan*/  state; TYPE_1__ miscdev; } ;
struct inode {int dummy; } ;
struct file {struct twl4030_wdt* private_data; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  TWL4030_WDT_STATE_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ nowayout ; 
 scalar_t__ FUNC2 (struct twl4030_wdt*) ; 
 int /*<<< orphan*/  FUNC3 (struct twl4030_wdt*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	struct twl4030_wdt *wdt = file->private_data;
	if (nowayout) {
		FUNC1(wdt->miscdev.parent,
		       "Unexpected close, watchdog still running!\n");
		FUNC3(wdt);
	} else {
		if (FUNC2(wdt))
			return -EFAULT;
		wdt->state &= ~TWL4030_WDT_STATE_ACTIVE;
	}

	FUNC0(0, &wdt->state);
	return 0;
}