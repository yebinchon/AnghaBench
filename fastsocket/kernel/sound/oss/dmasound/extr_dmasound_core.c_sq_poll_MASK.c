#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct poll_table_struct {int dummy; } ;
struct file {int f_mode; } ;
struct TYPE_3__ {scalar_t__ locked; scalar_t__ count; scalar_t__ max_active; scalar_t__ block_size; scalar_t__ rear_size; int /*<<< orphan*/  action_queue; } ;

/* Variables and functions */
 int FMODE_WRITE ; 
 unsigned int POLLOUT ; 
 unsigned int POLLWRNORM ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 int FUNC1 (TYPE_1__*) ; 
 TYPE_1__ write_sq ; 

__attribute__((used)) static unsigned int FUNC2(struct file *file, struct poll_table_struct *wait)
{
	unsigned int mask = 0;
	int retVal;
	
	if (write_sq.locked == 0) {
		if ((retVal = FUNC1(&write_sq)) < 0)
			return retVal;
		return 0;
	}
	if (file->f_mode & FMODE_WRITE )
		FUNC0(file, &write_sq.action_queue, wait);
	if (file->f_mode & FMODE_WRITE)
		if (write_sq.count < write_sq.max_active || write_sq.block_size - write_sq.rear_size > 0)
			mask |= POLLOUT | POLLWRNORM;
	return mask;

}