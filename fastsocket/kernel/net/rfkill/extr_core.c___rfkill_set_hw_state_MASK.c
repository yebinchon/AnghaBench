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
struct rfkill {int state; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int RFKILL_BLOCK_ANY ; 
 int RFKILL_BLOCK_HW ; 
 int /*<<< orphan*/  FUNC1 (struct rfkill*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC4(struct rfkill *rfkill,
				  bool blocked, bool *change)
{
	unsigned long flags;
	bool prev, any;

	FUNC0(!rfkill);

	FUNC2(&rfkill->lock, flags);
	prev = !!(rfkill->state & RFKILL_BLOCK_HW);
	if (blocked)
		rfkill->state |= RFKILL_BLOCK_HW;
	else
		rfkill->state &= ~RFKILL_BLOCK_HW;
	*change = prev != blocked;
	any = rfkill->state & RFKILL_BLOCK_ANY;
	FUNC3(&rfkill->lock, flags);

	FUNC1(rfkill);

	return any;
}