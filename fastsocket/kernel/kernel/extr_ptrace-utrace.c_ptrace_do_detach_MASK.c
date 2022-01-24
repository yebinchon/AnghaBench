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
struct task_struct {scalar_t__ ptrace; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct task_struct*) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct task_struct *tracee, unsigned int data)
{
	bool detach, release;

	FUNC5(&tasklist_lock);
	/*
	 * This tracee can be already killed. Make sure de_thread() or
	 * our sub-thread doing do_wait() didn't do release_task() yet.
	 */
	detach = tracee->ptrace != 0;
	release = false;
	if (FUNC1(detach))
		release = FUNC0(current, tracee);
	FUNC6(&tasklist_lock);

	if (FUNC4(release))
		FUNC3(tracee);
	else if (FUNC1(detach))
		FUNC2(tracee, data);
}