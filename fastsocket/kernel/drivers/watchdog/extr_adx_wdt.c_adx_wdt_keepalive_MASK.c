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
struct adx_wdt {int /*<<< orphan*/  lock; scalar_t__ base; int /*<<< orphan*/  timeout; } ;

/* Variables and functions */
 scalar_t__ ADX_WDT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct adx_wdt *wdt)
{
	unsigned long flags;

	FUNC0(&wdt->lock, flags);
	FUNC2(wdt->timeout, wdt->base + ADX_WDT_TIMEOUT);
	FUNC1(&wdt->lock, flags);
}