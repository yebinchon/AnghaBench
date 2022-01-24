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
struct file_lock {scalar_t__ fl_next; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct file_lock*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

int
FUNC3(struct file *filp, struct file_lock *waiter)
{
	int status = 0;

	FUNC1();
	if (waiter->fl_next)
		FUNC0(waiter);
	else
		status = -ENOENT;
	FUNC2();
	return status;
}