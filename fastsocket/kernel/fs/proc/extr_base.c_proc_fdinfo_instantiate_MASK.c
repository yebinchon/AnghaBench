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
struct proc_inode {unsigned int fd; } ;
struct inode {int i_mode; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/  i_sb; } ;
struct dentry {int /*<<< orphan*/ * d_op; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 struct proc_inode* FUNC1 (struct inode*) ; 
 int S_IFREG ; 
 int S_IRUSR ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  proc_fdinfo_file_operations ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ,struct task_struct*) ; 
 int /*<<< orphan*/  tid_fd_dentry_operations ; 
 scalar_t__ FUNC4 (struct dentry*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dentry *FUNC5(struct inode *dir,
	struct dentry *dentry, struct task_struct *task, const void *ptr)
{
	unsigned fd = *(unsigned *)ptr;
 	struct inode *inode;
 	struct proc_inode *ei;
	struct dentry *error = FUNC0(-ENOENT);

	inode = FUNC3(dir->i_sb, task);
	if (!inode)
		goto out;
	ei = FUNC1(inode);
	ei->fd = fd;
	inode->i_mode = S_IFREG | S_IRUSR;
	inode->i_fop = &proc_fdinfo_file_operations;
	dentry->d_op = &tid_fd_dentry_operations;
	FUNC2(dentry, inode);
	/* Close the race of the process dying before we return the dentry */
	if (FUNC4(dentry, NULL))
		error = NULL;

 out:
	return error;
}