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
struct async_domain {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;
typedef  scalar_t__ async_cookie_t ;

/* Variables and functions */
 scalar_t__ SYSTEM_BOOTING ; 
 int /*<<< orphan*/  async_done ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ initcall_debug ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct async_domain*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ system_state ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

void FUNC7(async_cookie_t cookie, struct async_domain *running)
{
	ktime_t starttime, delta, endtime;

	if (!running)
		return;

	if (initcall_debug && system_state == SYSTEM_BOOTING) {
		FUNC4("async_waiting @ %i\n", FUNC5(current));
		starttime = FUNC0();
	}

	FUNC6(async_done, FUNC3(running) >= cookie);

	if (initcall_debug && system_state == SYSTEM_BOOTING) {
		endtime = FUNC0();
		delta = FUNC1(endtime, starttime);

		FUNC4("async_continuing @ %i after %lli usec\n",
			FUNC5(current),
			(long long)FUNC2(delta) >> 10);
	}
}