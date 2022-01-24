#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_2__ hfa384x_usbctlx_t ;
struct TYPE_7__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  active; } ;
struct TYPE_10__ {int /*<<< orphan*/  transfer_flags; } ;
struct TYPE_9__ {int req_timer_done; int resp_timer_done; TYPE_1__ ctlxq; int /*<<< orphan*/  resptimer; TYPE_4__ ctlx_urb; } ;
typedef  TYPE_3__ hfa384x_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLX_REQ_FAILED ; 
 int /*<<< orphan*/  EINPROGRESS ; 
 int /*<<< orphan*/  URB_ASYNC_UNLINK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC6(unsigned long data)
{
	hfa384x_t *hw = (hfa384x_t *) data;
	unsigned long flags;

	FUNC3(&hw->ctlxq.lock, flags);

	hw->req_timer_done = 1;

	/* Removing the hardware automatically empties
	 * the active list ...
	 */
	if (!FUNC2(&hw->ctlxq.active)) {
		/*
		 * We must ensure that our URB is removed from
		 * the system, if it hasn't already expired.
		 */
		hw->ctlx_urb.transfer_flags |= URB_ASYNC_UNLINK;
		if (FUNC5(&hw->ctlx_urb) == -EINPROGRESS) {
			hfa384x_usbctlx_t *ctlx = FUNC1(hw);

			ctlx->state = CTLX_REQ_FAILED;

			/* This URB was active, but has now been
			 * cancelled. It will now have a status of
			 * -ECONNRESET in the callback function.
			 *
			 * We are cancelling this CTLX, so we're
			 * not going to need to wait for a response.
			 * The URB's callback function will check
			 * that this timer is truly dead.
			 */
			if (FUNC0(&hw->resptimer) != 0)
				hw->resp_timer_done = 1;
		}
	}

	FUNC4(&hw->ctlxq.lock, flags);
}