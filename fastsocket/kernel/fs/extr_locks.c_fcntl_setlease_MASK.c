#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file_lock {long fl_type; scalar_t__ fl_break_time; int /*<<< orphan*/  fl_fasync; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 long F_INPROGRESS ; 
 long F_UNLCK ; 
 int /*<<< orphan*/  PIDTYPE_PID ; 
 int FUNC0 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int FUNC1 (unsigned int,struct file*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int FUNC2 (struct file*,long,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct file_lock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (struct file*,long,struct file_lock**) ; 

int FUNC9(unsigned int fd, struct file *filp, long arg)
{
	struct file_lock fl, *flp = &fl;
	struct inode *inode = filp->f_path.dentry->d_inode;
	int error;

	FUNC4(&fl);
	error = FUNC2(filp, arg, &fl);
	if (error)
		return error;

	FUNC3();

	error = FUNC8(filp, arg, &flp);
	if (error || arg == F_UNLCK)
		goto out_unlock;

	error = FUNC1(fd, filp, 1, &flp->fl_fasync);
	if (error < 0) {
		/* remove lease just inserted by setlease */
		flp->fl_type = F_UNLCK | F_INPROGRESS;
		flp->fl_break_time = jiffies - 10;
		FUNC6(inode);
		goto out_unlock;
	}

	error = FUNC0(filp, FUNC5(current), PIDTYPE_PID, 0);
out_unlock:
	FUNC7();
	return error;
}