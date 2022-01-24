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
struct k_itimer {TYPE_1__* sigq; } ;
typedef  int /*<<< orphan*/  siginfo_t ;
struct TYPE_2__ {int /*<<< orphan*/  info; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct k_itimer*) ; 
 struct k_itimer* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  posix_timers_cache ; 
 TYPE_1__* FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static struct k_itimer * FUNC5(void)
{
	struct k_itimer *tmr;
	tmr = FUNC1(posix_timers_cache, GFP_KERNEL);
	if (!tmr)
		return tmr;
	if (FUNC4(!(tmr->sigq = FUNC3()))) {
		FUNC0(posix_timers_cache, tmr);
		return NULL;
	}
	FUNC2(&tmr->sigq->info, 0, sizeof(siginfo_t));
	return tmr;
}