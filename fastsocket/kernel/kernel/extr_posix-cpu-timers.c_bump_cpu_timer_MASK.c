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
union cpu_time_count {scalar_t__ sched; int /*<<< orphan*/  cpu; } ;
struct TYPE_6__ {scalar_t__ sched; int /*<<< orphan*/  cpu; } ;
struct TYPE_5__ {scalar_t__ sched; int /*<<< orphan*/  cpu; } ;
struct TYPE_7__ {TYPE_2__ expires; TYPE_1__ incr; } ;
struct TYPE_8__ {TYPE_3__ cpu; } ;
struct k_itimer {int it_overrun; TYPE_4__ it; int /*<<< orphan*/  it_clock; } ;
typedef  int /*<<< orphan*/  cputime_t ;

/* Variables and functions */
 scalar_t__ CPUCLOCK_SCHED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct k_itimer *timer,
				  union cpu_time_count now)
{
	int i;

	if (timer->it.cpu.incr.sched == 0)
		return;

	if (FUNC0(timer->it_clock) == CPUCLOCK_SCHED) {
		unsigned long long delta, incr;

		if (now.sched < timer->it.cpu.expires.sched)
			return;
		incr = timer->it.cpu.incr.sched;
		delta = now.sched + incr - timer->it.cpu.expires.sched;
		/* Don't use (incr*2 < delta), incr*2 might overflow. */
		for (i = 0; incr < delta - incr; i++)
			incr = incr << 1;
		for (; i >= 0; incr >>= 1, i--) {
			if (delta < incr)
				continue;
			timer->it.cpu.expires.sched += incr;
			timer->it_overrun += 1 << i;
			delta -= incr;
		}
	} else {
		cputime_t delta, incr;

		if (FUNC3(now.cpu, timer->it.cpu.expires.cpu))
			return;
		incr = timer->it.cpu.incr.cpu;
		delta = FUNC4(FUNC1(now.cpu, incr),
				    timer->it.cpu.expires.cpu);
		/* Don't use (incr*2 < delta), incr*2 might overflow. */
		for (i = 0; FUNC3(incr, FUNC4(delta, incr)); i++)
			     incr = FUNC1(incr, incr);
		for (; i >= 0; incr = FUNC2(incr), i--) {
			if (FUNC3(delta, incr))
				continue;
			timer->it.cpu.expires.cpu =
				FUNC1(timer->it.cpu.expires.cpu, incr);
			timer->it_overrun += 1 << i;
			delta = FUNC4(delta, incr);
		}
	}
}