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
typedef  unsigned long u64 ;
typedef  int u32 ;

/* Variables and functions */
 int ENAMODE12_PERIODIC ; 
 scalar_t__ PRD12 ; 
 scalar_t__ PRD34 ; 
 scalar_t__ TCR ; 
 scalar_t__ TGCR ; 
 scalar_t__ TIM12 ; 
 int TIM12RS_UNRESET ; 
 scalar_t__ TIM34 ; 
 int TIM34RS_UNRESET ; 
 int TIMMODE_64BIT_WDOG ; 
 int WDEN ; 
 int WDKEY_SEQ0 ; 
 int WDKEY_SEQ1 ; 
 scalar_t__ WDTCR ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ heartbeat ; 
 int /*<<< orphan*/  io_lock ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ wdt_base ; 
 int /*<<< orphan*/  wdt_clk ; 

__attribute__((used)) static void FUNC4(void)
{
	u32 tgcr;
	u32 timer_margin;
	unsigned long wdt_freq;

	wdt_freq = FUNC0(wdt_clk);

	FUNC2(&io_lock);

	/* disable, internal clock source */
	FUNC1(0, wdt_base + TCR);
	/* reset timer, set mode to 64-bit watchdog, and unreset */
	FUNC1(0, wdt_base + TGCR);
	tgcr = TIMMODE_64BIT_WDOG | TIM12RS_UNRESET | TIM34RS_UNRESET;
	FUNC1(tgcr, wdt_base + TGCR);
	/* clear counter regs */
	FUNC1(0, wdt_base + TIM12);
	FUNC1(0, wdt_base + TIM34);
	/* set timeout period */
	timer_margin = (((u64)heartbeat * wdt_freq) & 0xffffffff);
	FUNC1(timer_margin, wdt_base + PRD12);
	timer_margin = (((u64)heartbeat * wdt_freq) >> 32);
	FUNC1(timer_margin, wdt_base + PRD34);
	/* enable run continuously */
	FUNC1(ENAMODE12_PERIODIC, wdt_base + TCR);
	/* Once the WDT is in pre-active state write to
	 * TIM12, TIM34, PRD12, PRD34, TCR, TGCR, WDTCR are
	 * write protected (except for the WDKEY field)
	 */
	/* put watchdog in pre-active state */
	FUNC1(WDKEY_SEQ0 | WDEN, wdt_base + WDTCR);
	/* put watchdog in active state */
	FUNC1(WDKEY_SEQ1 | WDEN, wdt_base + WDTCR);

	FUNC3(&io_lock);
}