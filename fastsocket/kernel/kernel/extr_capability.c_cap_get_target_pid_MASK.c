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
typedef  int /*<<< orphan*/  kernel_cap_t ;

/* Variables and functions */
 int ESRCH ; 
 struct task_struct* current ; 
 struct task_struct* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct task_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  tasklist_lock ; 

__attribute__((used)) static inline int FUNC5(pid_t pid, kernel_cap_t *pEp,
				     kernel_cap_t *pIp, kernel_cap_t *pPp)
{
	int ret;

	if (pid && (pid != FUNC4(current))) {
		struct task_struct *target;

		FUNC1(&tasklist_lock);

		target = FUNC0(pid);
		if (!target)
			ret = -ESRCH;
		else
			ret = FUNC3(target, pEp, pIp, pPp);

		FUNC2(&tasklist_lock);
	} else
		ret = FUNC3(current, pEp, pIp, pPp);

	return ret;
}