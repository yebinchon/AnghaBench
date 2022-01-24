#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hfa384x_usbctlx_t ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  active; } ;
struct TYPE_7__ {int resp_timer_done; TYPE_1__ ctlxq; } ;
typedef  TYPE_2__ hfa384x_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(unsigned long data)
{
	hfa384x_t *hw = (hfa384x_t *) data;
	unsigned long flags;

	FUNC3(&hw->ctlxq.lock, flags);

	hw->resp_timer_done = 1;

	/* The active list will be empty if the
	 * adapter has been unplugged ...
	 */
	if (!FUNC2(&hw->ctlxq.active)) {
		hfa384x_usbctlx_t *ctlx = FUNC0(hw);

		if (FUNC5(hw, ctlx) == 0) {
			FUNC4(&hw->ctlxq.lock, flags);
			FUNC1(hw);
			goto done;
		}
	}

	FUNC4(&hw->ctlxq.lock, flags);

done:
	;

}