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
struct TYPE_2__ {int watchdog_enable; scalar_t__ reboot; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR9170_TIMER_REG_WATCH_DOG ; 
 int /*<<< orphan*/  AR9170_WATCH_DOG_TIMER ; 
 TYPE_1__ fw ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	if (fw.watchdog_enable == 1)
		FUNC1(AR9170_TIMER_REG_WATCH_DOG, AR9170_WATCH_DOG_TIMER);

	if (fw.reboot)
		FUNC0();
}