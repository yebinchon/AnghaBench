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
struct utrace_engine {int dummy; } ;
struct task_struct {TYPE_1__* signal; } ;
typedef  enum utrace_resume_action { ____Placeholder_utrace_resume_action } utrace_resume_action ;
struct TYPE_4__ {scalar_t__ stop_code; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGNAL_STOP_STOPPED ; 
 int UTRACE_REPORT ; 
 scalar_t__ FUNC0 (struct task_struct*,unsigned long*) ; 
 TYPE_2__* FUNC1 (struct utrace_engine*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,unsigned long*) ; 
 int FUNC3 (struct task_struct*,struct utrace_engine*,int) ; 

__attribute__((used)) static int FUNC4(struct task_struct *tracee,
				struct utrace_engine *engine,
				enum utrace_resume_action action,
				bool force_wakeup)
{
	if (force_wakeup) {
		unsigned long flags;
		/*
		 * Preserve the compatibility bug. Historically ptrace
		 * wakes up the tracee even if it should not. Clear
		 * SIGNAL_STOP_STOPPED for utrace_wakeup().
		 */
		if (FUNC0(tracee, &flags)) {
			tracee->signal->flags &= ~SIGNAL_STOP_STOPPED;
			FUNC2(tracee, &flags);
		}
	}

	if (action != UTRACE_REPORT)
		FUNC1(engine)->stop_code = 0;

	return FUNC3(tracee, engine, action);
}