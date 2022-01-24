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
typedef  int /*<<< orphan*/  timer_t ;
struct sigevent {int /*<<< orphan*/  sigev_signo; int /*<<< orphan*/  sigev_notify; } ;
struct sigaction {int /*<<< orphan*/  sa_handler; scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; } ;
struct TYPE_2__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct itimerspec {TYPE_1__ it_value; TYPE_1__ it_interval; } ;
typedef  scalar_t__ dtrace_optval_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 scalar_t__ NANOSEC ; 
 int /*<<< orphan*/  SIGEV_SIGNAL ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  TIMER_RELTIME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  g_dtp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  status_fire ; 
 int FUNC4 (int /*<<< orphan*/ ,struct sigevent*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct itimerspec*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(void)
{
	dtrace_optval_t val, status, agg;
	struct sigaction act;
	struct itimerspec ts;
	struct sigevent ev;
	timer_t tid;

	if (FUNC1(g_dtp, "statusrate", &status) == -1)
		FUNC0("failed to get 'statusrate'");

	if (FUNC1(g_dtp, "aggrate", &agg) == -1)
		FUNC0("failed to get 'statusrate'");

	/*
	 * We would want to awaken at a rate that is the GCD of the statusrate
	 * and the aggrate -- but that seems a bit absurd.  Instead, we'll
	 * simply awaken at a rate that is the more frequent of the two, which
	 * assures that we're never later than the interval implied by the
	 * more frequent rate.
	 */
	val = status < agg ? status : agg;

	(void) FUNC3(&act.sa_mask);
	act.sa_flags = 0;
	act.sa_handler = status_fire;
	(void) FUNC2(SIGUSR1, &act, NULL);

	ev.sigev_notify = SIGEV_SIGNAL;
	ev.sigev_signo = SIGUSR1;

	if (FUNC4(CLOCK_REALTIME, &ev, &tid) == -1)
		FUNC0("cannot create CLOCK_REALTIME timer");

	ts.it_value.tv_sec = val / NANOSEC;
	ts.it_value.tv_nsec = val % NANOSEC;
	ts.it_interval = ts.it_value;

	if (FUNC5(tid, TIMER_RELTIME, &ts, NULL) == -1)
		FUNC0("cannot set time on CLOCK_REALTIME timer");
}