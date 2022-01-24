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
typedef  union cpu_time_count {int dummy; } cpu_time_count ;
struct timespec {int dummy; } ;
struct task_struct {scalar_t__ signal; } ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  clockid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const) ; 
 int EINVAL ; 
 int FUNC2 (int /*<<< orphan*/  const,struct task_struct*,union cpu_time_count*) ; 
 int FUNC3 (int /*<<< orphan*/  const,struct task_struct*,union cpu_time_count*) ; 
 struct task_struct* current ; 
 struct task_struct* FUNC4 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct task_struct*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const,union cpu_time_count,struct timespec*) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 scalar_t__ FUNC11 (struct task_struct*) ; 

__attribute__((used)) static int FUNC12(const clockid_t which_clock, struct timespec *tp)
{
	const pid_t pid = FUNC1(which_clock);
	int error = -EINVAL;
	union cpu_time_count rtn;

	if (pid == 0) {
		/*
		 * Special case constant value for our own clocks.
		 * We don't have to do any lookup to find ourselves.
		 */
		if (FUNC0(which_clock)) {
			/*
			 * Sampling just ourselves we can do with no locking.
			 */
			error = FUNC2(which_clock,
						 current, &rtn);
		} else {
			FUNC7(&tasklist_lock);
			error = FUNC3(which_clock,
						       current, &rtn);
			FUNC8(&tasklist_lock);
		}
	} else {
		/*
		 * Find the given PID, and validate that the caller
		 * should be able to see it.
		 */
		struct task_struct *p;
		FUNC5();
		p = FUNC4(pid);
		if (p) {
			if (FUNC0(which_clock)) {
				if (FUNC9(p, current)) {
					error = FUNC2(which_clock,
								 p, &rtn);
				}
			} else {
				FUNC7(&tasklist_lock);
				if (FUNC11(p) && p->signal) {
					error =
					    FUNC3(which_clock,
							           p, &rtn);
				}
				FUNC8(&tasklist_lock);
			}
		}
		FUNC6();
	}

	if (error)
		return error;
	FUNC10(which_clock, rtn, tp);
	return 0;
}