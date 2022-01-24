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
typedef  double time_t ;
struct timespec {double tv_sec; int tv_nsec; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 double INT_MAX ; 
 int /*<<< orphan*/  SIGINFO ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC3 (struct timespec*,struct timespec*) ; 
 int /*<<< orphan*/  report_request ; 
 scalar_t__ report_requested ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,char*,double*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int) ; 

int
FUNC8(int argc, char *argv[])
{
	struct timespec time_to_sleep;
	double d;
	time_t original;
	char buf[2];

	if (FUNC1() < 0 || FUNC0() < 0)
		FUNC2(1, "capsicum");

	if (argc != 2)
		FUNC6();

	if (FUNC5(argv[1], "%lf%1s", &d, buf) != 1)
		FUNC6();
	if (d > INT_MAX)
		FUNC6();
	if (d <= 0)
		return (0);
	original = time_to_sleep.tv_sec = (time_t)d;
	time_to_sleep.tv_nsec = 1e9 * (d - time_to_sleep.tv_sec);

	FUNC4(SIGINFO, report_request);

	/*
	 * Note: [EINTR] is supposed to happen only when a signal was handled
	 * but the kernel also returns it when a ptrace-based debugger
	 * attaches. This is a bug but it is hard to fix.
	 */
	while (FUNC3(&time_to_sleep, &time_to_sleep) != 0) {
		if (report_requested) {
			/* Reporting does not bother with nanoseconds. */
			FUNC7("about %d second(s) left out of the original %d",
			    (int)time_to_sleep.tv_sec, (int)original);
			report_requested = 0;
		} else if (errno != EINTR)
			FUNC2(1, "nanosleep");
	}
	return (0);
}