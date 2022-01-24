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
struct mpcore_wdt {int /*<<< orphan*/  timer_alive; } ;
struct inode {int dummy; } ;
struct file {struct mpcore_wdt* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpcore_wdt_dev ; 
 int /*<<< orphan*/  FUNC1 (struct mpcore_wdt*) ; 
 int FUNC2 (struct inode*,struct file*) ; 
 scalar_t__ nowayout ; 
 struct mpcore_wdt* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct mpcore_wdt *wdt = FUNC3(mpcore_wdt_dev);

	if (FUNC4(0, &wdt->timer_alive))
		return -EBUSY;

	if (nowayout)
		FUNC0(THIS_MODULE);

	file->private_data = wdt;

	/*
	 *	Activate timer
	 */
	FUNC1(wdt);

	return FUNC2(inode, file);
}