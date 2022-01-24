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
struct TYPE_2__ {int /*<<< orphan*/  watchdog_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR9170_PWR_REG_WATCH_DOG_MAGIC ; 
 int /*<<< orphan*/  AR9170_TIMER_REG_WATCH_DOG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__ fw ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(void)
{
	if (!fw.watchdog_enable)
		return;

	/* write watchdog magic pattern for suspend  */
	FUNC0(AR9170_PWR_REG_WATCH_DOG_MAGIC, 0xffff);
	FUNC1(AR9170_PWR_REG_WATCH_DOG_MAGIC, 0x98760000);

	/* Disable watchdog */
	FUNC2(AR9170_TIMER_REG_WATCH_DOG, 0xffff);
}