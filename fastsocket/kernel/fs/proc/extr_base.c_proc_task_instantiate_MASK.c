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
struct inode {int i_mode; scalar_t__ i_nlink; int /*<<< orphan*/  i_flags; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_sb; } ;
struct dentry {int /*<<< orphan*/ * d_op; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  S_IMMUTABLE ; 
 int S_IRUGO ; 
 int S_IXUGO ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  pid_dentry_operations ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct dentry*,int /*<<< orphan*/ *) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ,struct task_struct*) ; 
 int /*<<< orphan*/  proc_tid_base_inode_operations ; 
 int /*<<< orphan*/  proc_tid_base_operations ; 
 int /*<<< orphan*/  tid_base_stuff ; 

__attribute__((used)) static struct dentry *FUNC6(struct inode *dir,
	struct dentry *dentry, struct task_struct *task, const void *ptr)
{
	struct dentry *error = FUNC1(-ENOENT);
	struct inode *inode;
	inode = FUNC5(dir->i_sb, task);

	if (!inode)
		goto out;
	inode->i_mode = S_IFDIR|S_IRUGO|S_IXUGO;
	inode->i_op = &proc_tid_base_inode_operations;
	inode->i_fop = &proc_tid_base_operations;
	inode->i_flags|=S_IMMUTABLE;

	inode->i_nlink = 2 + FUNC3(tid_base_stuff,
		FUNC0(tid_base_stuff));

	dentry->d_op = &pid_dentry_operations;

	FUNC2(dentry, inode);
	/* Close the race of the process dying before we return the dentry */
	if (FUNC4(dentry, NULL))
		error = NULL;
out:
	return error;
}