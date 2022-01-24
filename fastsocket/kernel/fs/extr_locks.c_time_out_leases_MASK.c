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
struct file_lock {int fl_type; scalar_t__ fl_break_time; struct file_lock* fl_next; } ;

/* Variables and functions */
 int F_INPROGRESS ; 
 scalar_t__ FUNC0 (struct file_lock*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct file_lock**,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct inode *inode)
{
	struct file_lock **before;
	struct file_lock *fl;

	before = &inode->i_flock;
	while ((fl = *before) && FUNC0(fl) && (fl->fl_type & F_INPROGRESS)) {
		if ((fl->fl_break_time == 0)
				|| FUNC2(jiffies, fl->fl_break_time)) {
			before = &fl->fl_next;
			continue;
		}
		FUNC1(before, fl->fl_type & ~F_INPROGRESS);
		if (fl == *before)	/* lease_modify may have freed fl */
			before = &fl->fl_next;
	}
}