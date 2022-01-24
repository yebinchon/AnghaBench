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
struct mpcore_wdt {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ TWD_WDOG_CONTROL ; 
 scalar_t__ TWD_WDOG_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdt_lock ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct mpcore_wdt *wdt)
{
	FUNC0(&wdt_lock);
	FUNC2(0x12345678, wdt->base + TWD_WDOG_DISABLE);
	FUNC2(0x87654321, wdt->base + TWD_WDOG_DISABLE);
	FUNC2(0x0, wdt->base + TWD_WDOG_CONTROL);
	FUNC1(&wdt_lock);
}