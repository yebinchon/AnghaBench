#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_4__* priv; } ;
typedef  TYPE_3__ wlandevice_t ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_9__ {TYPE_1__ ctlxq; int /*<<< orphan*/  usb_work; int /*<<< orphan*/  usb_flags; TYPE_2__* wlandev; } ;
typedef  TYPE_4__ hfa384x_t ;
struct TYPE_7__ {int /*<<< orphan*/  hwremoved; } ;

/* Variables and functions */
 int /*<<< orphan*/  WORK_RX_HALT ; 
 int /*<<< orphan*/  WORK_TX_HALT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(wlandevice_t *wlandev)
{
	hfa384x_t *hw = wlandev->priv;
	unsigned long flags;

	FUNC1(&hw->ctlxq.lock, flags);

	if (!hw->wlandev->hwremoved &&
	    /* Note the bitwise OR, not the logical OR. */
	    (!FUNC3(WORK_TX_HALT, &hw->usb_flags) |
	     !FUNC3(WORK_RX_HALT, &hw->usb_flags))) {
		FUNC0(&hw->usb_work);
	}

	FUNC2(&hw->ctlxq.lock, flags);
}