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
struct proc_ns_operations {int /*<<< orphan*/  name; } ;
struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {unsigned int len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 size_t FUNC0 (struct proc_ns_operations**) ; 
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct proc_ns_operations** ns_entries ; 
 struct dentry* FUNC4 (struct inode*,struct dentry*,struct task_struct*,struct proc_ns_operations const*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dentry *FUNC7(struct inode *dir,
				struct dentry *dentry, struct nameidata *nd)
{
	struct dentry *error;
	struct task_struct *task = FUNC2(dir);
	const struct proc_ns_operations **entry, **last;
	unsigned int len = dentry->d_name.len;

	error = FUNC1(-ENOENT);

	if (!task)
		goto out_no_task;

	last = &ns_entries[FUNC0(ns_entries)];
	for (entry = ns_entries; entry < last; entry++) {
		if (FUNC6((*entry)->name) != len)
			continue;
		if (!FUNC3(dentry->d_name.name, (*entry)->name, len))
			break;
	}
	if (entry == last)
		goto out;

	error = FUNC4(dir, dentry, task, *entry);
out:
	FUNC5(task);
out_no_task:
	return error;
}