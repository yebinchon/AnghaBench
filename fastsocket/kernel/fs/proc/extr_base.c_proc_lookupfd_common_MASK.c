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
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef  struct dentry* (* instantiate_t ) (struct inode*,struct dentry*,struct task_struct*,unsigned int*) ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC1 (struct inode*) ; 
 unsigned int FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 

__attribute__((used)) static struct dentry *FUNC4(struct inode *dir,
					   struct dentry *dentry,
					   instantiate_t instantiate)
{
	struct task_struct *task = FUNC1(dir);
	unsigned fd = FUNC2(dentry);
	struct dentry *result = FUNC0(-ENOENT);

	if (!task)
		goto out_no_task;
	if (fd == ~0U)
		goto out;

	result = instantiate(dir, dentry, task, &fd);
out:
	FUNC3(task);
out_no_task:
	return result;
}