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
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct inode*,struct file*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer_alive ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	/* /dev/watchdog can only be opened once */
	if (FUNC2(0, &timer_alive))
		return -EBUSY;

	/* Reload and activate timer */
	FUNC0();

	return FUNC1(inode, file);
}