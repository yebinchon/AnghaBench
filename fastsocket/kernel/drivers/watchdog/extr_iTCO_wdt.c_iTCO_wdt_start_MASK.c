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
 int EIO ; 
 int /*<<< orphan*/  TCO1_CNT ; 
 int /*<<< orphan*/  TCO_RLD ; 
 int /*<<< orphan*/  heartbeat ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ iTCO_wdt_private ; 
 scalar_t__ FUNC1 () ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(void)
{
	unsigned int val;

	FUNC6(&iTCO_wdt_private.io_lock);

	FUNC0(iTCO_wdt_private.smi_res, heartbeat);

	/* disable chipset's NO_REBOOT bit */
	if (FUNC1()) {
		FUNC7(&iTCO_wdt_private.io_lock);
		FUNC5("failed to reset NO_REBOOT flag, reboot disabled by hardware/BIOS\n");
		return -EIO;
	}

	/* Force the timer to its reload value by writing to the TCO_RLD
	   register */
	if (iTCO_wdt_private.iTCO_version == 2)
		FUNC4(0x01, TCO_RLD);
	else if (iTCO_wdt_private.iTCO_version == 1)
		FUNC3(0x01, TCO_RLD);

	/* Bit 11: TCO Timer Halt -> 0 = The TCO timer is enabled to count */
	val = FUNC2(TCO1_CNT);
	val &= 0xf7ff;
	FUNC4(val, TCO1_CNT);
	val = FUNC2(TCO1_CNT);
	FUNC7(&iTCO_wdt_private.io_lock);

	if (val & 0x0800)
		return -1;
	return 0;
}