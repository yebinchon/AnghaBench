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
struct task_struct {int dummy; } ;
struct pid_namespace {int hide_pid; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct pid_namespace* s_fs_info; } ;

/* Variables and functions */
 int ENOENT ; 
 int EPERM ; 
 int ESRCH ; 
 int FUNC0 (struct inode*,int,int /*<<< orphan*/ *) ; 
 struct task_struct* FUNC1 (struct inode*) ; 
 int FUNC2 (struct pid_namespace*,struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, int mask)
{
	struct pid_namespace *pid = inode->i_sb->s_fs_info;
	struct task_struct *task;
	bool has_perms;

	task = FUNC1(inode);
	if (!task)
		return -ESRCH;
	has_perms = FUNC2(pid, task, 1);
	FUNC3(task);

	if (!has_perms) {
		if (pid->hide_pid == 2) {
			/*
			 * Let's make getdents(), stat(), and open()
			 * consistent with each other.  If a process
			 * may not stat() a file, it shouldn't be seen
			 * in procfs at all.
			 */
			return -ENOENT;
		}

		return -EPERM;
	}
	return FUNC0(inode, mask, NULL);
}