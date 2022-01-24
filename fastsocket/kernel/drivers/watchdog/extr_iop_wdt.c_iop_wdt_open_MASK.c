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
 int /*<<< orphan*/  WDT_ENABLED ; 
 int /*<<< orphan*/  WDT_IN_USE ; 
 int /*<<< orphan*/  WDT_OK_TO_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  wdt_status ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	if (FUNC3(WDT_IN_USE, &wdt_status))
		return -EBUSY;

	FUNC0(WDT_OK_TO_CLOSE, &wdt_status);
	FUNC4();
	FUNC2(WDT_ENABLED, &wdt_status);
	return FUNC1(inode, file);
}