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
struct mm_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EPERM ; 
 struct mm_struct* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTRACE_MODE_ATTACH ; 
 struct task_struct* current ; 
 struct mm_struct* FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 scalar_t__ FUNC3 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (struct task_struct*) ; 
 struct task_struct* FUNC7 (struct task_struct*) ; 

__attribute__((used)) static struct mm_struct *FUNC8(struct task_struct *task)
{
	struct mm_struct *mm;

	mm = FUNC1(task);
	if (!mm)
		return FUNC0(-EINVAL);

	/*
	 * A task can always look at itself, in case it chooses
	 * to use system calls instead of load instructions.
	 */
	if (task == current)
		return mm;

	/*
	 * If current is actively ptrace'ing, and would also be
	 * permitted to freshly attach with ptrace now, permit it.
	 */
	if (FUNC6(task)) {
		int match;
		FUNC4();
		match = (FUNC7(task) == current);
		FUNC5();
		if (match && FUNC3(task, PTRACE_MODE_ATTACH))
			return mm;
	}

	/*
	 * Noone else is allowed.
	 */
	FUNC2(mm);
	return FUNC0(-EPERM);
}