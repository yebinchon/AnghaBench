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
struct inode {struct file_lock* i_flock; } ;
struct file_lock {scalar_t__ fl_end; scalar_t__ fl_start; int fl_type; struct file_lock* fl_next; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct file_lock*) ; 
 scalar_t__ FUNC1 (struct file_lock*) ; 
 int LOCK_MAND ; 
 int LOCK_WRITE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(struct inode *inode, loff_t start, unsigned long len)
{
	struct file_lock *fl;
	int result = 1;
	FUNC2();
	for (fl = inode->i_flock; fl != NULL; fl = fl->fl_next) {
		if (FUNC1(fl)) {
			if ((fl->fl_end < start) || (fl->fl_start > (start + len)))
				continue;
		} else if (FUNC0(fl)) {
			if (!(fl->fl_type & LOCK_MAND))
				continue;
			if (fl->fl_type & LOCK_WRITE)
				continue;
		} else
			continue;
		result = 0;
		break;
	}
	FUNC3();
	return result;
}