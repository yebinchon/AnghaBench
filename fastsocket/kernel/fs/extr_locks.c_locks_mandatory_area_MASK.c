#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file_lock {int fl_flags; int /*<<< orphan*/  fl_next; int /*<<< orphan*/  fl_wait; void* fl_end; void* fl_start; int /*<<< orphan*/  fl_type; struct file* fl_file; int /*<<< orphan*/  fl_pid; int /*<<< orphan*/  fl_owner; } ;
struct file {int f_flags; } ;
typedef  void* loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  tgid; int /*<<< orphan*/  files; } ;

/* Variables and functions */
 int FILE_LOCK_DEFERRED ; 
 int FLOCK_VERIFY_WRITE ; 
 int FL_ACCESS ; 
 int FL_POSIX ; 
 int FL_SLEEP ; 
 int /*<<< orphan*/  F_RDLCK ; 
 int /*<<< orphan*/  F_WRLCK ; 
 int O_NONBLOCK ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*,struct file_lock*,int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (struct file_lock*) ; 
 int /*<<< orphan*/  FUNC3 (struct file_lock*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

int FUNC5(int read_write, struct inode *inode,
			 struct file *filp, loff_t offset,
			 size_t count)
{
	struct file_lock fl;
	int error;

	FUNC3(&fl);
	fl.fl_owner = current->files;
	fl.fl_pid = current->tgid;
	fl.fl_file = filp;
	fl.fl_flags = FL_POSIX | FL_ACCESS;
	if (filp && !(filp->f_flags & O_NONBLOCK))
		fl.fl_flags |= FL_SLEEP;
	fl.fl_type = (read_write == FLOCK_VERIFY_WRITE) ? F_WRLCK : F_RDLCK;
	fl.fl_start = offset;
	fl.fl_end = offset + count - 1;

	for (;;) {
		error = FUNC1(inode, &fl, NULL);
		if (error != FILE_LOCK_DEFERRED)
			break;
		error = FUNC4(fl.fl_wait, !fl.fl_next);
		if (!error) {
			/*
			 * If we've been sleeping someone might have
			 * changed the permissions behind our back.
			 */
			if (FUNC0(inode))
				continue;
		}

		FUNC2(&fl);
		break;
	}

	return error;
}