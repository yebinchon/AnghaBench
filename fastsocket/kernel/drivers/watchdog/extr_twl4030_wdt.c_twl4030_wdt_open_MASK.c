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
struct twl4030_wdt {int /*<<< orphan*/  state; } ;
struct inode {int dummy; } ;
struct file {void* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  TWL4030_WDT_STATE_ACTIVE ; 
 int FUNC0 (struct inode*,struct file*) ; 
 struct twl4030_wdt* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  twl4030_wdt_dev ; 
 int /*<<< orphan*/  FUNC3 (struct twl4030_wdt*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	struct twl4030_wdt *wdt = FUNC1(twl4030_wdt_dev);

	/* /dev/watchdog can only be opened once */
	if (FUNC2(0, &wdt->state))
		return -EBUSY;

	wdt->state |= TWL4030_WDT_STATE_ACTIVE;
	file->private_data = (void *) wdt;

	FUNC3(wdt);
	return FUNC0(inode, file);
}