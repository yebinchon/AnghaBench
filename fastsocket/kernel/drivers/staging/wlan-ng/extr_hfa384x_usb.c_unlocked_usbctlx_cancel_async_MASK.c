#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ hfa384x_usbctlx_t ;
struct TYPE_10__ {int /*<<< orphan*/  transfer_flags; } ;
struct TYPE_9__ {TYPE_3__ ctlx_urb; } ;
typedef  TYPE_2__ hfa384x_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLX_REQ_FAILED ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  URB_ASYNC_UNLINK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int FUNC1 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC2(hfa384x_t *hw,
					 hfa384x_usbctlx_t *ctlx)
{
	int ret;

	/*
	 * Try to delete the URB containing our request packet.
	 * If we succeed, then its completion handler will be
	 * called with a status of -ECONNRESET.
	 */
	hw->ctlx_urb.transfer_flags |= URB_ASYNC_UNLINK;
	ret = FUNC1(&hw->ctlx_urb);

	if (ret != -EINPROGRESS) {
		/*
		 * The OUT URB had either already completed
		 * or was still in the pending queue, so the
		 * URB's completion function will not be called.
		 * We will have to complete the CTLX ourselves.
		 */
		ctlx->state = CTLX_REQ_FAILED;
		FUNC0(hw, ctlx);
		ret = 0;
	}

	return ret;
}