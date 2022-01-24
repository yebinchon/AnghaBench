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
 unsigned int SM_COUNTMODE ; 
 int /*<<< orphan*/  SM_DATAIO ; 
 int /*<<< orphan*/  SM_REGINDEX ; 
 unsigned int SM_RESETCONTROL ; 
 unsigned int SM_WATCHENABLE ; 
 unsigned int SM_WATCHTIMER ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(unsigned int heartbeat)
{
	unsigned int val;

	FUNC3();

	/* Watchdog timer setting needs to be in seconds*/
	FUNC1(SM_COUNTMODE, SM_REGINDEX);
	val = FUNC0(SM_DATAIO);
	val &= 0xF7;
	FUNC1(val, SM_DATAIO);

	/* Write heartbeat interval to WDOG */
	FUNC1(SM_WATCHTIMER, SM_REGINDEX);
	FUNC1((heartbeat & 255), SM_DATAIO);

	/* Make sure keyboard/mouse interrupts don't interfere */
	FUNC1(SM_RESETCONTROL, SM_REGINDEX);
	val = FUNC0(SM_DATAIO);
	val &= 0x3f;
	FUNC1(val, SM_DATAIO);

	/* enable watchdog by setting bit 0 of Watchdog Enable to 1 */
	FUNC1(SM_WATCHENABLE, SM_REGINDEX);
	val = FUNC0(SM_DATAIO);
	val |= 0x01;
	FUNC1(val, SM_DATAIO);

	FUNC2();
}