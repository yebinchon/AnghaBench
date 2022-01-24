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
struct file {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  is_active ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,struct file*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdt_global ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	/* /dev/watchdog can only be opened once */
	if (FUNC3(0, &is_active))
		return -EBUSY;

	/* Set and activate the watchdog */
	FUNC0(wdt_global, 30);
	FUNC1(wdt_global);
	file->private_data = wdt_global;
	return FUNC2(inode, file);
}