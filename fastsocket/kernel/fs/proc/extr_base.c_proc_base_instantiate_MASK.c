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
struct proc_inode {int /*<<< orphan*/  op; int /*<<< orphan*/  pid; } ;
struct pid_entry {int /*<<< orphan*/  op; scalar_t__ fop; scalar_t__ iop; int /*<<< orphan*/  mode; } ;
struct inode {int i_nlink; int i_size; scalar_t__ i_fop; scalar_t__ i_op; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_sb; } ;
struct dentry {int /*<<< orphan*/ * d_op; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PIDTYPE_PID ; 
 struct proc_inode* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 struct inode* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proc_base_dentry_operations ; 

__attribute__((used)) static struct dentry *FUNC8(struct inode *dir,
	struct dentry *dentry, struct task_struct *task, const void *ptr)
{
	const struct pid_entry *p = ptr;
	struct inode *inode;
	struct proc_inode *ei;
	struct dentry *error = FUNC0(-EINVAL);

	/* Allocate the inode */
	error = FUNC0(-ENOMEM);
	inode = FUNC7(dir->i_sb);
	if (!inode)
		goto out;

	/* Initialize the inode */
	ei = FUNC1(inode);
	inode->i_mtime = inode->i_atime = inode->i_ctime = CURRENT_TIME;

	/*
	 * grab the reference to the task.
	 */
	ei->pid = FUNC5(task, PIDTYPE_PID);
	if (!ei->pid)
		goto out_iput;

	inode->i_mode = p->mode;
	if (FUNC2(inode->i_mode))
		inode->i_nlink = 2;
	if (FUNC3(inode->i_mode))
		inode->i_size = 64;
	if (p->iop)
		inode->i_op = p->iop;
	if (p->fop)
		inode->i_fop = p->fop;
	ei->op = p->op;
	dentry->d_op = &proc_base_dentry_operations;
	FUNC4(dentry, inode);
	error = NULL;
out:
	return error;
out_iput:
	FUNC6(inode);
	goto out;
}