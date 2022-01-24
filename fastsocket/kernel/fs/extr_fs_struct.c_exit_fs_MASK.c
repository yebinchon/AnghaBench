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
struct task_struct {struct fs_struct* fs; } ;
struct fs_struct {int /*<<< orphan*/  lock; int /*<<< orphan*/  users; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fs_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct task_struct *tsk)
{
	struct fs_struct *fs = tsk->fs;

	if (fs) {
		int kill;
		FUNC1(tsk);
		FUNC3(&fs->lock);
		tsk->fs = NULL;
		kill = !--fs->users;
		FUNC4(&fs->lock);
		FUNC2(tsk);
		if (kill)
			FUNC0(fs);
	}
}