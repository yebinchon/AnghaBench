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
struct vfsmount {int dummy; } ;
struct task_struct {int dummy; } ;
struct pid_namespace {int dummy; } ;
struct kstat {int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct inode {int i_mode; } ;
struct dentry {TYPE_1__* d_sb; struct inode* d_inode; } ;
struct cred {int /*<<< orphan*/  egid; int /*<<< orphan*/  euid; } ;
struct TYPE_2__ {struct pid_namespace* s_fs_info; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  PIDTYPE_PID ; 
 int S_IFDIR ; 
 int S_IRUGO ; 
 int S_IXUGO ; 
 struct cred* FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct kstat*) ; 
 int /*<<< orphan*/  FUNC2 (struct pid_namespace*,struct task_struct*,int) ; 
 struct task_struct* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (struct task_struct*) ; 

int FUNC8(struct vfsmount *mnt, struct dentry *dentry, struct kstat *stat)
{
	struct inode *inode = dentry->d_inode;
	struct task_struct *task;
	const struct cred *cred;
	struct pid_namespace *pid = dentry->d_sb->s_fs_info;

	FUNC1(inode, stat);

	FUNC5();
	stat->uid = 0;
	stat->gid = 0;
	task = FUNC3(FUNC4(inode), PIDTYPE_PID);
	if (task) {
		if (!FUNC2(pid, task, 2)) {
			FUNC6();
			/*
			 * This doesn't prevent learning whether PID exists,
			 * it only makes getattr() consistent with readdir().
			 */
			return -ENOENT;
		}
		if ((inode->i_mode == (S_IFDIR|S_IRUGO|S_IXUGO)) ||
		    FUNC7(task)) {
			cred = FUNC0(task);
			stat->uid = cred->euid;
			stat->gid = cred->egid;
		}
	}
	FUNC6();
	return 0;
}