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
struct pid_namespace {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_2__ {struct pid_namespace* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct task_struct* FUNC3 (unsigned int,struct pid_namespace*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 unsigned int FUNC5 (struct dentry*) ; 
 struct dentry* FUNC6 (struct inode*,struct dentry*) ; 
 struct dentry* FUNC7 (struct inode*,struct dentry*,struct task_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

struct dentry *FUNC11(struct inode *dir, struct dentry * dentry, struct nameidata *nd)
{
	struct dentry *result = FUNC0(-ENOENT);
	struct task_struct *task;
	unsigned tgid;
	struct pid_namespace *ns;

	result = FUNC6(dir, dentry);
	if (!FUNC1(result) || FUNC2(result) != -ENOENT)
		goto out;

	tgid = FUNC5(dentry);
	if (tgid == ~0U)
		goto out;

	ns = dentry->d_sb->s_fs_info;
	FUNC9();
	task = FUNC3(tgid, ns);
	if (task)
		FUNC4(task);
	FUNC10();
	if (!task)
		goto out;

	result = FUNC7(dir, dentry, task, NULL);
	FUNC8(task);
out:
	return result;
}