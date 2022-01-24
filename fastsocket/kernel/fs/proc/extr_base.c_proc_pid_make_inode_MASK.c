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
struct task_struct {int dummy; } ;
struct super_block {int dummy; } ;
struct proc_inode {int /*<<< orphan*/  pid; } ;
struct inode {int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; } ;
struct cred {int /*<<< orphan*/  egid; int /*<<< orphan*/  euid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int /*<<< orphan*/  PIDTYPE_PID ; 
 struct proc_inode* FUNC0 (struct inode*) ; 
 struct cred* FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  proc_def_inode_operations ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*,struct inode*) ; 
 scalar_t__ FUNC8 (struct task_struct*) ; 

struct inode *FUNC9(struct super_block * sb, struct task_struct *task)
{
	struct inode * inode;
	struct proc_inode *ei;
	const struct cred *cred;

	/* We need a new inode */

	inode = FUNC4(sb);
	if (!inode)
		goto out;

	/* Common stuff */
	ei = FUNC0(inode);
	inode->i_mtime = inode->i_atime = inode->i_ctime = CURRENT_TIME;
	inode->i_op = &proc_def_inode_operations;

	/*
	 * grab the reference to task.
	 */
	ei->pid = FUNC2(task, PIDTYPE_PID);
	if (!ei->pid)
		goto out_unlock;

	if (FUNC8(task)) {
		FUNC5();
		cred = FUNC1(task);
		inode->i_uid = cred->euid;
		inode->i_gid = cred->egid;
		FUNC6();
	}
	FUNC7(task, inode);

out:
	return inode;

out_unlock:
	FUNC3(inode);
	return NULL;
}