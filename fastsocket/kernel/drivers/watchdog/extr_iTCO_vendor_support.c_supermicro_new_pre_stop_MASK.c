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
 int /*<<< orphan*/  SM_DATAIO ; 
 int /*<<< orphan*/  SM_REGINDEX ; 
 unsigned int SM_WATCHENABLE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
	unsigned int val;

	FUNC3();

	/* disable watchdog by setting bit 0 of Watchdog Enable to 0 */
	FUNC1(SM_WATCHENABLE, SM_REGINDEX);
	val = FUNC0(SM_DATAIO);
	val &= 0xFE;
	FUNC1(val, SM_DATAIO);

	FUNC2();
}