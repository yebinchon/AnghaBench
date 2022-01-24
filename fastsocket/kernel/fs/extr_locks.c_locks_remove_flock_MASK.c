#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct inode {struct file_lock* i_flock; } ;
struct file_lock {struct file_lock* fl_next; struct file* fl_file; TYPE_4__* fl_ops; int /*<<< orphan*/  fl_end; int /*<<< orphan*/  fl_type; int /*<<< orphan*/  fl_flags; int /*<<< orphan*/  fl_pid; } ;
struct TYPE_7__ {TYPE_1__* dentry; } ;
struct file {TYPE_3__* f_op; TYPE_2__ f_path; } ;
struct TYPE_10__ {int /*<<< orphan*/  tgid; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* fl_release_private ) (struct file_lock*) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  (* flock ) (struct file*,int /*<<< orphan*/ ,struct file_lock*) ;} ;
struct TYPE_6__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FL_FLOCK ; 
 int /*<<< orphan*/  F_SETLKW ; 
 int /*<<< orphan*/  F_UNLCK ; 
 scalar_t__ FUNC1 (struct file_lock*) ; 
 scalar_t__ FUNC2 (struct file_lock*) ; 
 int /*<<< orphan*/  OFFSET_MAX ; 
 TYPE_5__* current ; 
 int /*<<< orphan*/  FUNC3 (struct file_lock**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct file_lock**) ; 
 int /*<<< orphan*/  FUNC6 (struct file*,int /*<<< orphan*/ ,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC7 (struct file_lock*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(struct file *filp)
{
	struct inode * inode = filp->f_path.dentry->d_inode;
	struct file_lock *fl;
	struct file_lock **before;

	if (!inode->i_flock)
		return;

	if (filp->f_op && filp->f_op->flock) {
		struct file_lock fl = {
			.fl_pid = current->tgid,
			.fl_file = filp,
			.fl_flags = FL_FLOCK,
			.fl_type = F_UNLCK,
			.fl_end = OFFSET_MAX,
		};
		filp->f_op->flock(filp, F_SETLKW, &fl);
		if (fl.fl_ops && fl.fl_ops->fl_release_private)
			fl.fl_ops->fl_release_private(&fl);
	}

	FUNC4();
	before = &inode->i_flock;

	while ((fl = *before) != NULL) {
		if (fl->fl_file == filp) {
			if (FUNC1(fl)) {
				FUNC5(before);
				continue;
			}
			if (FUNC2(fl)) {
				FUNC3(before, F_UNLCK);
				continue;
			}
			/* What? */
			FUNC0();
 		}
		before = &fl->fl_next;
	}
	FUNC8();
}