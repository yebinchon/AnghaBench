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
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  WDTS_DEV_OPEN ; 
 int /*<<< orphan*/  WDTS_LOCKED ; 
 int /*<<< orphan*/  WDTS_TIMER_RUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ exclusive ; 
 int FUNC1 (struct inode*,struct file*) ; 
 scalar_t__ nowayout ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  wdt_status ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	if (exclusive && FUNC2(WDTS_DEV_OPEN, &wdt_status))
		return -EBUSY;
	if (!FUNC2(WDTS_TIMER_RUN, &wdt_status)) {
		if (nowayout && !FUNC2(WDTS_LOCKED, &wdt_status))
			FUNC0(THIS_MODULE);
		FUNC3();
	}
	return FUNC1(inode, file);
}