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
struct task_struct {unsigned int exit_code; int /*<<< orphan*/  exit_state; scalar_t__ ptrace; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  TIF_SYSCALL_TRACE ; 
 int FUNC0 (int /*<<< orphan*/ ,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct task_struct *child, unsigned int data)
{
	bool dead = false;

	if (!FUNC5(data))
		return -EIO;

	/* Architecture-specific hardware disable .. */
	FUNC2(child);
	FUNC1(child, TIF_SYSCALL_TRACE);

	FUNC7(&tasklist_lock);
	/*
	 * This child can be already killed. Make sure de_thread() or
	 * our sub-thread doing do_wait() didn't do release_task() yet.
	 */
	if (child->ptrace) {
		child->exit_code = data;
		dead = FUNC0(current, child);
		if (!child->exit_state)
			FUNC6(child);
	}
	FUNC8(&tasklist_lock);

	if (FUNC4(dead))
		FUNC3(child);

	return 0;
}