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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WDTS_KEEPALIVE ; 
 int /*<<< orphan*/  WDTS_USE_GP ; 
 int /*<<< orphan*/  base ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdt_status ; 

__attribute__((used)) static void FUNC5(void)
{
	if (FUNC4(WDTS_USE_GP, &wdt_status))
		FUNC1(base);
	else
		/* The timer reloads with around 5 msec delay */
		FUNC2(0x55, FUNC0(base));
	FUNC3(WDTS_KEEPALIVE, &wdt_status);
}