#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tgid_iter {scalar_t__ tgid; struct task_struct* task; } ;
struct task_struct {int dummy; } ;
struct pid_namespace {int dummy; } ;
struct pid_entry {int dummy; } ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct file {scalar_t__ f_pos; TYPE_4__* f_dentry; TYPE_2__ f_path; } ;
typedef  int /*<<< orphan*/  filldir_t ;
struct TYPE_8__ {TYPE_3__* d_sb; } ;
struct TYPE_7__ {struct pid_namespace* s_fs_info; } ;
struct TYPE_5__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct pid_entry*) ; 
 unsigned int FIRST_PROCESS_ENTRY ; 
 scalar_t__ PID_MAX_LIMIT ; 
 scalar_t__ TGID_OFFSET ; 
 int /*<<< orphan*/  fake_filldir ; 
 struct task_struct* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct pid_namespace*,struct task_struct*,int) ; 
 struct tgid_iter FUNC3 (struct pid_namespace*,struct tgid_iter) ; 
 scalar_t__ FUNC4 (struct file*,void*,int /*<<< orphan*/ ,struct task_struct*,struct pid_entry const*) ; 
 struct pid_entry* proc_base_stuff ; 
 scalar_t__ FUNC5 (struct file*,void*,int /*<<< orphan*/ ,struct tgid_iter) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 

int FUNC7(struct file * filp, void * dirent, filldir_t filldir)
{
	unsigned int nr;
	struct task_struct *reaper;
	struct tgid_iter iter;
	struct pid_namespace *ns;
	filldir_t __filldir;

	if (filp->f_pos >= PID_MAX_LIMIT + TGID_OFFSET)
		goto out_no_task;
	nr = filp->f_pos - FIRST_PROCESS_ENTRY;

	reaper = FUNC1(filp->f_path.dentry->d_inode);
	if (!reaper)
		goto out_no_task;

	for (; nr < FUNC0(proc_base_stuff); filp->f_pos++, nr++) {
		const struct pid_entry *p = &proc_base_stuff[nr];
		if (FUNC4(filp, dirent, filldir, reaper, p) < 0)
			goto out;
	}

	ns = filp->f_dentry->d_sb->s_fs_info;
	iter.task = NULL;
	iter.tgid = filp->f_pos - TGID_OFFSET;
	for (iter = FUNC3(ns, iter);
	     iter.task;
	     iter.tgid += 1, iter = FUNC3(ns, iter)) {
		if (FUNC2(ns, iter.task, 2))
			__filldir = filldir;
		else
			__filldir = fake_filldir;

		filp->f_pos = iter.tgid + TGID_OFFSET;
		if (FUNC5(filp, dirent, __filldir, iter) < 0) {
			FUNC6(iter.task);
			goto out;
		}
	}
	filp->f_pos = PID_MAX_LIMIT + TGID_OFFSET;
out:
	FUNC6(reaper);
out_no_task:
	return 0;
}