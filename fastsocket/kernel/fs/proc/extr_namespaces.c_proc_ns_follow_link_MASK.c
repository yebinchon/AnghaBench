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
struct super_block {int dummy; } ;
struct proc_inode {int /*<<< orphan*/  ns_ops; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct nameidata {TYPE_1__ path; } ;
struct inode {struct super_block* i_sb; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 void* FUNC0 (struct dentry*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 struct proc_inode* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  PTRACE_MODE_READ ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 struct task_struct* FUNC5 (struct inode*) ; 
 struct dentry* FUNC6 (struct super_block*,struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 

__attribute__((used)) static void *FUNC9(struct dentry *dentry, struct nameidata *nd)
{
	struct inode *inode = dentry->d_inode;
	struct super_block *sb = inode->i_sb;
	struct proc_inode *ei = FUNC3(inode);
	struct task_struct *task;
	struct dentry *ns_dentry;
	void *error = FUNC1(-EACCES);

	task = FUNC5(inode);
	if (!task)
		goto out;

	if (!FUNC7(task, PTRACE_MODE_READ))
		goto out_put_task;

	ns_dentry = FUNC6(sb, task, ei->ns_ops);
	if (FUNC2(ns_dentry)) {
		error = FUNC0(ns_dentry);
		goto out_put_task;
	}

	FUNC4(nd->path.dentry);
	nd->path.dentry = ns_dentry;
	error = NULL;

out_put_task:
	FUNC8(task);
out:
	return error;
}