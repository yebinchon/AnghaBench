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
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  clockid_t ;

/* Variables and functions */
 scalar_t__ CPUCLOCK_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const) ; 
 int EINVAL ; 
 int /*<<< orphan*/  current ; 
 struct task_struct* FUNC3 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 

__attribute__((used)) static int FUNC8(const clockid_t which_clock)
{
	int error = 0;
	struct task_struct *p;
	const pid_t pid = FUNC1(which_clock);

	if (FUNC2(which_clock) >= CPUCLOCK_MAX)
		return -EINVAL;

	if (pid == 0)
		return 0;

	FUNC4(&tasklist_lock);
	p = FUNC3(pid);
	if (!p || !(FUNC0(which_clock) ?
		   FUNC6(p, current) : FUNC7(p))) {
		error = -EINVAL;
	}
	FUNC5(&tasklist_lock);

	return error;
}