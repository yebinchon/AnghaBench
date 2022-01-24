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
struct TYPE_2__ {int /*<<< orphan*/  io_lock; int /*<<< orphan*/  smi_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCO1_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ iTCO_wdt_private ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(void)
{
	unsigned int val;

	FUNC4(&iTCO_wdt_private.io_lock);

	FUNC0(iTCO_wdt_private.smi_res);

	/* Bit 11: TCO Timer Halt -> 1 = The TCO timer is disabled */
	val = FUNC2(TCO1_CNT);
	val |= 0x0800;
	FUNC3(val, TCO1_CNT);
	val = FUNC2(TCO1_CNT);

	/* Set the NO_REBOOT bit to prevent later reboots, just for sure */
	FUNC1();

	FUNC5(&iTCO_wdt_private.io_lock);

	if ((val & 0x0800) == 0)
		return -1;
	return 0;
}