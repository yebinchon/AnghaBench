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
struct proc_ns_operations {int dummy; } ;
struct proc_inode {struct proc_ns_operations const* ns_ops; } ;
struct inode {int i_mode; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_sb; } ;
struct dentry {int /*<<< orphan*/ * d_op; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 struct proc_inode* FUNC1 (struct inode*) ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  pid_dentry_operations ; 
 scalar_t__ FUNC3 (struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  proc_ns_link_inode_operations ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ,struct task_struct*) ; 

__attribute__((used)) static struct dentry *FUNC5(struct inode *dir,
	struct dentry *dentry, struct task_struct *task, const void *ptr)
{
	const struct proc_ns_operations *ns_ops = ptr;
	struct inode *inode;
	struct proc_inode *ei;
	struct dentry *error = FUNC0(-ENOENT);

	inode = FUNC4(dir->i_sb, task);
	if (!inode)
		goto out;

	ei = FUNC1(inode);
	inode->i_mode = S_IFLNK|S_IRWXUGO;
	inode->i_op = &proc_ns_link_inode_operations;
	ei->ns_ops = ns_ops;

	dentry->d_op = &pid_dentry_operations;
	FUNC2(dentry, inode);
	/* Close the race of the process dying before we return the dentry */
	if (FUNC3(dentry, NULL))
		error = NULL;
out:
	return error;
}