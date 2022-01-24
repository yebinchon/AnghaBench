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
struct TYPE_2__ {scalar_t__ sum_exec_runtime; } ;
struct task_struct {TYPE_1__ se; int /*<<< orphan*/  stime; int /*<<< orphan*/  utime; struct signal_struct* signal; } ;
struct signal_struct {scalar_t__ sum_sched_runtime; int /*<<< orphan*/  stime; int /*<<< orphan*/  utime; int /*<<< orphan*/  cpu_timers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct task_struct *tsk)
{
	struct signal_struct *const sig = tsk->signal;

	FUNC0(tsk->signal->cpu_timers,
		       FUNC1(tsk->utime, sig->utime),
		       FUNC1(tsk->stime, sig->stime),
		       tsk->se.sum_exec_runtime + sig->sum_sched_runtime);
}