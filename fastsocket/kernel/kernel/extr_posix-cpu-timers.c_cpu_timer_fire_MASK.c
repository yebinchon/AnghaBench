#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ sched; } ;
struct TYPE_7__ {scalar_t__ sched; } ;
struct TYPE_6__ {TYPE_1__ expires; TYPE_3__ incr; } ;
struct TYPE_8__ {TYPE_2__ cpu; } ;
struct k_itimer {int /*<<< orphan*/  it_requeue_pending; TYPE_4__ it; int /*<<< orphan*/  it_process; int /*<<< orphan*/ * sigq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct k_itimer*) ; 
 scalar_t__ FUNC1 (struct k_itimer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct k_itimer *timer)
{
	if (FUNC2(timer->sigq == NULL)) {
		/*
		 * This a special case for clock_nanosleep,
		 * not a normal timer from sys_timer_create.
		 */
		FUNC3(timer->it_process);
		timer->it.cpu.expires.sched = 0;
	} else if (timer->it.cpu.incr.sched == 0) {
		/*
		 * One-shot timer.  Clear it as soon as it's fired.
		 */
		FUNC1(timer, 0);
		timer->it.cpu.expires.sched = 0;
	} else if (FUNC1(timer, ++timer->it_requeue_pending)) {
		/*
		 * The signal did not get queued because the signal
		 * was ignored, so we won't get any callback to
		 * reload the timer.  But we need to keep it
		 * ticking in case the signal is deliverable next time.
		 */
		FUNC0(timer);
	}
}