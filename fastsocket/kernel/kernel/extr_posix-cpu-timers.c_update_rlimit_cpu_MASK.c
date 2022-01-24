#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct task_struct {TYPE_1__* sighand; struct signal_struct* signal; } ;
struct signal_struct {TYPE_2__* it; } ;
typedef  int /*<<< orphan*/  cputime_t ;
struct TYPE_4__ {int /*<<< orphan*/  expires; } ;
struct TYPE_3__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 size_t CPUCLOCK_PROF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cputime_zero ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct task_struct *task, unsigned long rlim_new)
{
	cputime_t cputime = FUNC2(rlim_new);
	struct signal_struct *const sig = task->signal;

	if (FUNC0(sig->it[CPUCLOCK_PROF].expires, cputime_zero) ||
	    FUNC1(sig->it[CPUCLOCK_PROF].expires, cputime)) {
		FUNC4(&task->sighand->siglock);
		FUNC3(task, CPUCLOCK_PROF, &cputime, NULL);
		FUNC5(&task->sighand->siglock);
	}
}