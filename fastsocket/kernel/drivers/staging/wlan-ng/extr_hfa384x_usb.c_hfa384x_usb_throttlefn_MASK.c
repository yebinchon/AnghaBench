#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {TYPE_2__ ctlxq; int /*<<< orphan*/  usb_work; int /*<<< orphan*/  usb_flags; TYPE_1__* wlandev; } ;
typedef  TYPE_3__ hfa384x_t ;
struct TYPE_4__ {int /*<<< orphan*/  hwremoved; } ;

/* Variables and functions */
 int /*<<< orphan*/  THROTTLE_RX ; 
 int /*<<< orphan*/  THROTTLE_TX ; 
 int /*<<< orphan*/  WORK_RX_RESUME ; 
 int /*<<< orphan*/  WORK_TX_RESUME ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(unsigned long data)
{
	hfa384x_t *hw = (hfa384x_t *) data;
	unsigned long flags;

	FUNC2(&hw->ctlxq.lock, flags);

	/*
	 * We need to check BOTH the RX and the TX throttle controls,
	 * so we use the bitwise OR instead of the logical OR.
	 */
	FUNC0("flags=0x%lx\n", hw->usb_flags);
	if (!hw->wlandev->hwremoved &&
	    ((FUNC4(THROTTLE_RX, &hw->usb_flags) &&
	      !FUNC5(WORK_RX_RESUME, &hw->usb_flags))
	     |
	     (FUNC4(THROTTLE_TX, &hw->usb_flags) &&
	      !FUNC5(WORK_TX_RESUME, &hw->usb_flags))
	    )) {
		FUNC1(&hw->usb_work);
	}

	FUNC3(&hw->ctlxq.lock, flags);
}