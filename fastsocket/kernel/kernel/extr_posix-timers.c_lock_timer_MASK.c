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
typedef  scalar_t__ timer_t ;
struct k_itimer {scalar_t__ it_signal; int /*<<< orphan*/  it_lock; } ;
struct TYPE_2__ {scalar_t__ signal; } ;

/* Variables and functions */
 TYPE_1__* current ; 
 struct k_itimer* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  posix_timers_id ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct k_itimer *FUNC5(timer_t timer_id, unsigned long *flags)
{
	struct k_itimer *timr;

	FUNC1();
	timr = FUNC0(&posix_timers_id, (int)timer_id);
	if (timr) {
		FUNC3(&timr->it_lock, *flags);
		if (timr->it_signal == current->signal) {
			FUNC2();
			return timr;
		}
		FUNC4(&timr->it_lock, *flags);
	}
	FUNC2();

	return NULL;
}