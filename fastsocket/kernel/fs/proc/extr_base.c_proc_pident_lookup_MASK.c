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
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct dentry* FUNC3 (struct inode*,struct dentry*,struct task_struct*,struct pid_entry const*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 

__attribute__((used)) static struct dentry *FUNC5(struct inode *dir, 
					 struct dentry *dentry,
					 const struct pid_entry *ents,
					 unsigned int nents)
{
	struct dentry *error;
	struct task_struct *task = FUNC1(dir);
	const struct pid_entry *p, *last;

	error = FUNC0(-ENOENT);

	if (!task)
		goto out_no_task;

	/*
	 * Yes, it does not scale. And it should not. Don't add
	 * new entries into /proc/<tgid>/ without very good reasons.
	 */
	last = &ents[nents - 1];
	for (p = ents; p <= last; p++) {
		if (p->len != dentry->d_name.len)
			continue;
		if (!FUNC2(dentry->d_name.name, p->name, p->len))
			break;
	}
	if (p > last)
		goto out;

	error = FUNC3(dir, dentry, task, p);
out:
	FUNC4(task);
out_no_task:
	return error;
}