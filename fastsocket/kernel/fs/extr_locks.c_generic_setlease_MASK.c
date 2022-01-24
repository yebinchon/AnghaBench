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
struct inode {scalar_t__ i_uid; struct file_lock* i_flock; int /*<<< orphan*/  i_count; int /*<<< orphan*/  i_writecount; int /*<<< orphan*/  i_mode; } ;
struct file_lock {long fl_type; TYPE_2__* fl_lmops; struct file_lock* fl_next; } ;
struct TYPE_3__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {int /*<<< orphan*/  d_count; struct inode* d_inode; } ;
struct TYPE_4__ {int (* fl_change ) (struct file_lock**,long) ;scalar_t__ (* fl_mylease ) (struct file_lock*,struct file_lock*) ;int /*<<< orphan*/  fl_break; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CAP_LEASE ; 
 int EACCES ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENOMEM ; 
 long F_INPROGRESS ; 
 long F_RDLCK ; 
 long F_UNLCK ; 
 long F_WRLCK ; 
 scalar_t__ FUNC1 (struct file_lock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  leases_enable ; 
 struct file_lock* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct file_lock*,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC8 (struct file_lock*) ; 
 int /*<<< orphan*/  FUNC9 (struct file_lock**,struct file_lock*) ; 
 int FUNC10 (struct file*,long) ; 
 scalar_t__ FUNC11 (struct file_lock*,struct file_lock*) ; 
 int FUNC12 (struct file_lock**,long) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 

int FUNC14(struct file *filp, long arg, struct file_lock **flp)
{
	struct file_lock *fl, **before, **my_before = NULL, *lease;
	struct file_lock *new_fl = NULL;
	struct dentry *dentry = filp->f_path.dentry;
	struct inode *inode = dentry->d_inode;
	int error, rdlease_count = 0, wrlease_count = 0;

	if ((FUNC5() != inode->i_uid) && !FUNC4(CAP_LEASE))
		return -EACCES;
	if (!FUNC2(inode->i_mode))
		return -EINVAL;
	error = FUNC10(filp, arg);
	if (error)
		return error;

	FUNC13(inode);

	FUNC0(!(*flp)->fl_lmops->fl_break);

	lease = *flp;

	if (arg != F_UNLCK) {
		error = -ENOMEM;
		new_fl = FUNC6();
		if (new_fl == NULL)
			goto out;

		error = -EAGAIN;
		if ((arg == F_RDLCK) && (FUNC3(&inode->i_writecount) > 0))
			goto out;
		if ((arg == F_WRLCK)
		    && ((FUNC3(&dentry->d_count) > 1)
			|| (FUNC3(&inode->i_count) > 1)))
			goto out;
	}

	/*
	 * At this point, we know that if there is an exclusive
	 * lease on this file, then we hold it on this filp
	 * (otherwise our open of this file would have blocked).
	 * And if we are trying to acquire an exclusive lease,
	 * then the file is not open by anyone (including us)
	 * except for this filp.
	 */
	for (before = &inode->i_flock;
			((fl = *before) != NULL) && FUNC1(fl);
			before = &fl->fl_next) {
		if (lease->fl_lmops->fl_mylease(fl, lease))
			my_before = before;
		else if (fl->fl_type == (F_INPROGRESS | F_UNLCK))
			/*
			 * Someone is in the process of opening this
			 * file for writing so we may not take an
			 * exclusive lease on it.
			 */
			wrlease_count++;
		else
			rdlease_count++;
	}

	error = -EAGAIN;
	if ((arg == F_RDLCK && (wrlease_count > 0)) ||
	    (arg == F_WRLCK && ((rdlease_count + wrlease_count) > 0)))
		goto out;

	if (my_before != NULL) {
		*flp = *my_before;
		error = lease->fl_lmops->fl_change(my_before, arg);
		goto out;
	}

	error = 0;
	if (arg == F_UNLCK)
		goto out;

	error = -EINVAL;
	if (!leases_enable)
		goto out;

	FUNC7(new_fl, lease);
	FUNC9(before, new_fl);

	*flp = new_fl;
	return 0;

out:
	if (new_fl != NULL)
		FUNC8(new_fl);
	return error;
}