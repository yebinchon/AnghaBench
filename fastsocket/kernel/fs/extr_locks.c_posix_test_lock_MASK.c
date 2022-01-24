#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct file_lock {int /*<<< orphan*/  fl_type; scalar_t__ fl_nspid; int /*<<< orphan*/  fl_pid; struct file_lock* fl_next; } ;
struct TYPE_6__ {TYPE_2__* dentry; } ;
struct file {TYPE_3__ f_path; } ;
struct TYPE_5__ {TYPE_1__* d_inode; } ;
struct TYPE_4__ {struct file_lock* i_flock; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_UNLCK ; 
 int /*<<< orphan*/  FUNC0 (struct file_lock*) ; 
 int /*<<< orphan*/  FUNC1 (struct file_lock*,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct file_lock*,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6(struct file *filp, struct file_lock *fl)
{
	struct file_lock *cfl;

	FUNC2();
	for (cfl = filp->f_path.dentry->d_inode->i_flock; cfl; cfl = cfl->fl_next) {
		if (!FUNC0(cfl))
			continue;
		if (FUNC4(fl, cfl))
			break;
	}
	if (cfl) {
		FUNC1(fl, cfl);
		if (cfl->fl_nspid)
			fl->fl_pid = FUNC3(cfl->fl_nspid);
	} else
		fl->fl_type = F_UNLCK;
	FUNC5();
	return;
}