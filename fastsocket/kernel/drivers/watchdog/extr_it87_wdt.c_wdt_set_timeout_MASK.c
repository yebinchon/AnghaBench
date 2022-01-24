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

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GPIO ; 
 int /*<<< orphan*/  WDTS_TIMER_RUN ; 
 int /*<<< orphan*/  WDTVALLSB ; 
 int /*<<< orphan*/  WDTVALMSB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  spinlock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int timeout ; 
 int /*<<< orphan*/  wdt_status ; 

__attribute__((used)) static int FUNC7(int t)
{
	unsigned long flags;

	if (t < 1 || t > 65535)
		return -EINVAL;

	timeout = t;

	FUNC0(&spinlock, flags);
	if (FUNC6(WDTS_TIMER_RUN, &wdt_status)) {
		FUNC2();

		FUNC5(GPIO);
		FUNC4(t>>8, WDTVALMSB);
		FUNC4(t, WDTVALLSB);

		FUNC3();
	}
	FUNC1(&spinlock, flags);
	return 0;
}