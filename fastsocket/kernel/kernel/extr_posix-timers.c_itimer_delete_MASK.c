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
struct k_itimer {int /*<<< orphan*/ * it_signal; int /*<<< orphan*/  list; int /*<<< orphan*/  it_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IT_ID_SET ; 
 scalar_t__ TIMER_RETRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct k_itimer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (struct k_itimer*) ; 
 int /*<<< orphan*/  FUNC4 (struct k_itimer*,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct k_itimer *timer)
{
	unsigned long flags;

retry_delete:
	FUNC2(&timer->it_lock, flags);

	if (FUNC3(timer) == TIMER_RETRY) {
		FUNC4(timer, flags);
		goto retry_delete;
	}
	FUNC0(&timer->list);
	/*
	 * This keeps any tasks waiting on the spin lock from thinking
	 * they got something (see the lock code above).
	 */
	timer->it_signal = NULL;

	FUNC4(timer, flags);
	FUNC1(timer, IT_ID_SET);
}