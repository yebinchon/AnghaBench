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
struct pid_entry {scalar_t__ len; int /*<<< orphan*/  name; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {scalar_t__ len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 int FUNC0 (struct pid_entry*) ; 
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct dentry* FUNC4 (struct inode*,struct dentry*,struct task_struct*,struct pid_entry const*) ; 
 struct pid_entry* proc_base_stuff ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 

__attribute__((used)) static struct dentry *FUNC6(struct inode *dir, struct dentry *dentry)
{
	struct dentry *error;
	struct task_struct *task = FUNC2(dir);
	const struct pid_entry *p, *last;

	error = FUNC1(-ENOENT);

	if (!task)
		goto out_no_task;

	/* Lookup the directory entry */
	last = &proc_base_stuff[FUNC0(proc_base_stuff) - 1];
	for (p = proc_base_stuff; p <= last; p++) {
		if (p->len != dentry->d_name.len)
			continue;
		if (!FUNC3(dentry->d_name.name, p->name, p->len))
			break;
	}
	if (p > last)
		goto out;

	error = FUNC4(dir, dentry, task, p);

out:
	FUNC5(task);
out_no_task:
	return error;
}