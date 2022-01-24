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
 int COUNT_ENAB ; 
 int DEBUG_EN ; 
 int MATCH_INT ; 
 int MATCH_OUTPUT_HIGH ; 
 int M_RES2 ; 
 int RESET_COUNT ; 
 int RESET_COUNT0 ; 
 int STOP_COUNT0 ; 
 int WDOG_COUNTER_RATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int heartbeat ; 
 int /*<<< orphan*/  io_lock ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdt_base ; 
 scalar_t__ wdt_clk ; 

__attribute__((used)) static void FUNC13(void)
{
	FUNC11(&io_lock);

	if (wdt_clk)
		FUNC9(wdt_clk, 1);

	/* stop counter, initiate counter reset */
	FUNC8(RESET_COUNT, FUNC1(wdt_base));
	/*wait for reset to complete. 100% guarantee event */
	while (FUNC7(FUNC0(wdt_base)))
		FUNC10();
	/* internal and external reset, stop after that */
	FUNC8(M_RES2 | STOP_COUNT0 | RESET_COUNT0,
		FUNC5(wdt_base));
	/* configure match output */
	FUNC8(MATCH_OUTPUT_HIGH, FUNC2(wdt_base));
	/* clear interrupt, just in case */
	FUNC8(MATCH_INT, FUNC3(wdt_base));
	/* the longest pulse period 65541/(13*10^6) seconds ~ 5 ms. */
	FUNC8(0xFFFF, FUNC6(wdt_base));
	FUNC8(heartbeat * WDOG_COUNTER_RATE, FUNC4(wdt_base));
	/*enable counter, stop when debugger active */
	FUNC8(COUNT_ENAB | DEBUG_EN, FUNC1(wdt_base));

	FUNC12(&io_lock);
}