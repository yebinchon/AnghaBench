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
struct utrace {scalar_t__ resume; } ;
struct task_struct {TYPE_1__* sighand; } ;
struct TYPE_2__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_TRACED ; 
 scalar_t__ UTRACE_REPORT ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct task_struct*) ; 
 int FUNC6 (struct task_struct*) ; 

__attribute__((used)) static bool FUNC7(struct task_struct *target, struct utrace *utrace)
{
	if (FUNC5(target)) {
		/*
		 * Stopped is considered quiescent; when it wakes up, it will
		 * go through utrace_finish_stop() before doing anything else.
		 */
		FUNC3(&target->sighand->siglock);
		if (FUNC1(FUNC5(target)))
			FUNC0(target, TASK_TRACED);
		FUNC4(&target->sighand->siglock);
	} else if (utrace->resume > UTRACE_REPORT) {
		utrace->resume = UTRACE_REPORT;
		FUNC2(target);
	}

	return FUNC6(target);
}