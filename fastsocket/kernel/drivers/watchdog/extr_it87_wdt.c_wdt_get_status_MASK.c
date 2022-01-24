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
 int /*<<< orphan*/  GPIO ; 
 int WDIOF_CARDRESET ; 
 int WDIOF_KEEPALIVEPING ; 
 int WDIOF_MAGICCLOSE ; 
 int /*<<< orphan*/  WDTCTRL ; 
 int /*<<< orphan*/  WDTS_EXPECTED ; 
 int /*<<< orphan*/  WDTS_KEEPALIVE ; 
 int /*<<< orphan*/  WDTS_TIMER_RUN ; 
 int WDT_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  spinlock ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ testmode ; 
 int /*<<< orphan*/  wdt_status ; 

__attribute__((used)) static int FUNC10(int *status)
{
	unsigned long flags;

	*status = 0;
	if (testmode) {
		FUNC1(&spinlock, flags);
		FUNC3();
		FUNC7(GPIO);
		if (FUNC5(WDTCTRL) & WDT_ZERO) {
			FUNC6(0x00, WDTCTRL);
			FUNC0(WDTS_TIMER_RUN, &wdt_status);
			*status |= WDIOF_CARDRESET;
		}

		FUNC4();
		FUNC2(&spinlock, flags);
	}
	if (FUNC8(WDTS_KEEPALIVE, &wdt_status))
		*status |= WDIOF_KEEPALIVEPING;
	if (FUNC9(WDTS_EXPECTED, &wdt_status))
		*status |= WDIOF_MAGICCLOSE;
	return 0;
}