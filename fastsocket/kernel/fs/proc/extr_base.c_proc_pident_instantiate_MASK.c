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
struct proc_inode {int /*<<< orphan*/  op; } ;
struct pid_entry {int /*<<< orphan*/  op; scalar_t__ fop; scalar_t__ iop; int /*<<< orphan*/  mode; } ;
struct inode {int i_nlink; scalar_t__ i_fop; scalar_t__ i_op; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;
struct dentry {int /*<<< orphan*/ * d_op; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 struct proc_inode* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  pid_dentry_operations ; 
 scalar_t__ FUNC4 (struct dentry*,int /*<<< orphan*/ *) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ,struct task_struct*) ; 

__attribute__((used)) static struct dentry *FUNC6(struct inode *dir,
	struct dentry *dentry, struct task_struct *task, const void *ptr)
{
	const struct pid_entry *p = ptr;
	struct inode *inode;
	struct proc_inode *ei;
	struct dentry *error = FUNC0(-ENOENT);

	inode = FUNC5(dir->i_sb, task);
	if (!inode)
		goto out;

	ei = FUNC1(inode);
	inode->i_mode = p->mode;
	if (FUNC2(inode->i_mode))
		inode->i_nlink = 2;	/* Use getattr to fix if necessary */
	if (p->iop)
		inode->i_op = p->iop;
	if (p->fop)
		inode->i_fop = p->fop;
	ei->op = p->op;
	dentry->d_op = &pid_dentry_operations;
	FUNC3(dentry, inode);
	/* Close the race of the process dying before we return the dentry */
	if (FUNC4(dentry, NULL))
		error = NULL;
out:
	return error;
}