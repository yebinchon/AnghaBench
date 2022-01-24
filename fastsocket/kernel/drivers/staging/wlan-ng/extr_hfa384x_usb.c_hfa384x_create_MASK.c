#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct usb_device {int dummy; } ;
struct TYPE_8__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct TYPE_6__ {int /*<<< orphan*/  reapable; int /*<<< orphan*/  completing; int /*<<< orphan*/  active; int /*<<< orphan*/  pending; int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {TYPE_4__ commsqual_timer; int /*<<< orphan*/  commsqual_bh; int /*<<< orphan*/  state; int /*<<< orphan*/  link_status; int /*<<< orphan*/  ctlx_urb; int /*<<< orphan*/  tx_urb; int /*<<< orphan*/  rx_urb; TYPE_4__ reqtimer; TYPE_4__ resptimer; TYPE_4__ throttle; int /*<<< orphan*/  usb_work; int /*<<< orphan*/  link_bh; int /*<<< orphan*/  completion_bh; int /*<<< orphan*/  reaper_bh; int /*<<< orphan*/  authq; TYPE_1__ ctlxq; int /*<<< orphan*/  cmdq; int /*<<< orphan*/  endp_out; int /*<<< orphan*/  endp_in; struct usb_device* usb; } ;
typedef  TYPE_2__ hfa384x_t ;

/* Variables and functions */
 int /*<<< orphan*/  HFA384x_LINK_NOTCONNECTED ; 
 int /*<<< orphan*/  HFA384x_STATE_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hfa384x_usb_defer ; 
 int /*<<< orphan*/  hfa384x_usb_throttlefn ; 
 int /*<<< orphan*/  hfa384x_usbctlx_completion_task ; 
 int /*<<< orphan*/  hfa384x_usbctlx_reaper_task ; 
 int /*<<< orphan*/  hfa384x_usbctlx_reqtimerfn ; 
 int /*<<< orphan*/  hfa384x_usbctlx_resptimerfn ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  prism2sta_commsqual_defer ; 
 int /*<<< orphan*/  prism2sta_commsqual_timer ; 
 int /*<<< orphan*/  prism2sta_processing_defer ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_device*,int) ; 

void FUNC11(hfa384x_t *hw, struct usb_device *usb)
{
	FUNC4(hw, 0, sizeof(hfa384x_t));
	hw->usb = usb;

	/* set up the endpoints */
	hw->endp_in = FUNC9(usb, 1);
	hw->endp_out = FUNC10(usb, 2);

	/* Set up the waitq */
	FUNC3(&hw->cmdq);

	/* Initialize the command queue */
	FUNC6(&hw->ctlxq.lock);
	FUNC0(&hw->ctlxq.pending);
	FUNC0(&hw->ctlxq.active);
	FUNC0(&hw->ctlxq.completing);
	FUNC0(&hw->ctlxq.reapable);

	/* Initialize the authentication queue */
	FUNC5(&hw->authq);

	FUNC7(&hw->reaper_bh,
		     hfa384x_usbctlx_reaper_task, (unsigned long)hw);
	FUNC7(&hw->completion_bh,
		     hfa384x_usbctlx_completion_task, (unsigned long)hw);
	FUNC1(&hw->link_bh, prism2sta_processing_defer);
	FUNC1(&hw->usb_work, hfa384x_usb_defer);

	FUNC2(&hw->throttle);
	hw->throttle.function = hfa384x_usb_throttlefn;
	hw->throttle.data = (unsigned long)hw;

	FUNC2(&hw->resptimer);
	hw->resptimer.function = hfa384x_usbctlx_resptimerfn;
	hw->resptimer.data = (unsigned long)hw;

	FUNC2(&hw->reqtimer);
	hw->reqtimer.function = hfa384x_usbctlx_reqtimerfn;
	hw->reqtimer.data = (unsigned long)hw;

	FUNC8(&hw->rx_urb);
	FUNC8(&hw->tx_urb);
	FUNC8(&hw->ctlx_urb);

	hw->link_status = HFA384x_LINK_NOTCONNECTED;
	hw->state = HFA384x_STATE_INIT;

	FUNC1(&hw->commsqual_bh, prism2sta_commsqual_defer);
	FUNC2(&hw->commsqual_timer);
	hw->commsqual_timer.data = (unsigned long)hw;
	hw->commsqual_timer.function = prism2sta_commsqual_timer;
}