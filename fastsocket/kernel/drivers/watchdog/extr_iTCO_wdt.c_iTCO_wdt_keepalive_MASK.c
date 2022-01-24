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
struct TYPE_2__ {int iTCO_version; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  smi_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCO1_STS ; 
 int /*<<< orphan*/  TCO_RLD ; 
 int /*<<< orphan*/  heartbeat ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ iTCO_wdt_private ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(void)
{
	FUNC3(&iTCO_wdt_private.io_lock);

	FUNC0(iTCO_wdt_private.smi_res, heartbeat);

	/* Reload the timer by writing to the TCO Timer Counter register */
	if (iTCO_wdt_private.iTCO_version == 2)
		FUNC2(0x01, TCO_RLD);
	else if (iTCO_wdt_private.iTCO_version == 1) {
		/* Reset the timeout status bit so that the timer
		 * needs to count down twice again before rebooting */
		FUNC2(0x0008, TCO1_STS);	/* write 1 to clear bit */

		FUNC1(0x01, TCO_RLD);
	}

	FUNC4(&iTCO_wdt_private.io_lock);
	return 0;
}