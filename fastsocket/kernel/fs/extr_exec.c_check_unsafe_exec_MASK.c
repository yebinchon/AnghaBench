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
struct task_struct {TYPE_1__* fs; } ;
struct linux_binprm {int /*<<< orphan*/  unsafe; } ;
struct TYPE_2__ {unsigned int users; int in_exec; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  LSM_UNSAFE_SHARE ; 
 struct task_struct* current ; 
 struct task_struct* FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct linux_binprm *bprm)
{
	struct task_struct *p = current, *t;
	unsigned n_fs;
	int res = 0;

	bprm->unsafe = FUNC3(p);

	n_fs = 1;
	FUNC4(&p->fs->lock);
	FUNC1();
	for (t = FUNC0(p); t != p; t = FUNC0(t)) {
		if (t->fs == p->fs)
			n_fs++;
	}
	FUNC2();

	if (p->fs->users > n_fs) {
		bprm->unsafe |= LSM_UNSAFE_SHARE;
	} else {
		res = -EAGAIN;
		if (!p->fs->in_exec) {
			p->fs->in_exec = 1;
			res = 1;
		}
	}
	FUNC5(&p->fs->lock);

	return res;
}