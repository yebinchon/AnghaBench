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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  SPRN_TCR ; 
 int TCR_WIE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int WDTP_MASK ; 
 int /*<<< orphan*/  WRC_CHIP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  booke_wdt_period ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(void *data)
{
	u32 val;

	/* clear status before enabling watchdog */
	FUNC2(NULL);
	val = FUNC3(SPRN_TCR);
	val &= ~WDTP_MASK;
	val |= (TCR_WIE|FUNC0(WRC_CHIP)|FUNC1(booke_wdt_period));

	FUNC4(SPRN_TCR, val);
}