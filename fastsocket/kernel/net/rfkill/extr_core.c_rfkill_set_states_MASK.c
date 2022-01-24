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
struct rfkill {int state; int persistent; int /*<<< orphan*/  uevent_work; int /*<<< orphan*/  registered; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int RFKILL_BLOCK_HW ; 
 int RFKILL_BLOCK_SW ; 
 int /*<<< orphan*/  FUNC1 (struct rfkill*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rfkill*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct rfkill *rfkill, bool sw, bool hw)
{
	unsigned long flags;
	bool swprev, hwprev;

	FUNC0(!rfkill);

	FUNC4(&rfkill->lock, flags);

	/*
	 * No need to care about prev/setblock ... this is for uevent only
	 * and that will get triggered by rfkill_set_block anyway.
	 */
	swprev = !!(rfkill->state & RFKILL_BLOCK_SW);
	hwprev = !!(rfkill->state & RFKILL_BLOCK_HW);
	FUNC1(rfkill, sw);
	if (hw)
		rfkill->state |= RFKILL_BLOCK_HW;
	else
		rfkill->state &= ~RFKILL_BLOCK_HW;

	FUNC5(&rfkill->lock, flags);

	if (!rfkill->registered) {
		rfkill->persistent = true;
	} else {
		if (swprev != sw || hwprev != hw)
			FUNC3(&rfkill->uevent_work);

		FUNC2(rfkill);
	}
}