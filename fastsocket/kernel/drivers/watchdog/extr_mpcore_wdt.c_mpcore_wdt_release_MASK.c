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
struct mpcore_wdt {int expect_close; int /*<<< orphan*/  timer_alive; int /*<<< orphan*/  dev; } ;
struct inode {int dummy; } ;
struct file {struct mpcore_wdt* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_CRIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mpcore_wdt*) ; 
 int /*<<< orphan*/  FUNC3 (struct mpcore_wdt*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	struct mpcore_wdt *wdt = file->private_data;

	/*
	 *	Shut off the timer.
	 * 	Lock it in if it's a module and we set nowayout
	 */
	if (wdt->expect_close == 42)
		FUNC3(wdt);
	else {
		FUNC1(KERN_CRIT, wdt->dev,
				"unexpected close, not stopping watchdog!\n");
		FUNC2(wdt);
	}
	FUNC0(0, &wdt->timer_alive);
	wdt->expect_close = 0;
	return 0;
}