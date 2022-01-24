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
struct TYPE_6__ {struct usb_device* root_hub; int /*<<< orphan*/  controller; } ;
struct usb_hcd {scalar_t__ irq; TYPE_3__ self; int /*<<< orphan*/  rh_timer; int /*<<< orphan*/  flags; int /*<<< orphan*/  state; TYPE_2__* driver; int /*<<< orphan*/  wakeup_work; scalar_t__ rh_registered; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct usb_device {TYPE_1__ dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* stop ) (struct usb_hcd*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HCD_FLAG_POLL_RH ; 
 int /*<<< orphan*/  HCD_FLAG_RH_POLLABLE ; 
 int /*<<< orphan*/  HCD_FLAG_RH_RUNNING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HC_STATE_HALT ; 
 int /*<<< orphan*/  HC_STATE_QUIESCING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_hcd*) ; 
 int /*<<< orphan*/  hcd_root_hub_lock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usb_bus_attr_group ; 
 int /*<<< orphan*/  usb_bus_list_lock ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_device**) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_device*) ; 
 scalar_t__ FUNC17 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_device*) ; 

void FUNC19(struct usb_hcd *hcd)
{
	struct usb_device *rhdev = hcd->self.root_hub;

	FUNC5(hcd->self.controller, "remove, state %x\n", hcd->state);

	FUNC16(rhdev);
	FUNC13(&rhdev->dev.kobj, &usb_bus_attr_group);

	FUNC2(HCD_FLAG_RH_RUNNING, &hcd->flags);
	if (FUNC0 (hcd->state))
		hcd->state = HC_STATE_QUIESCING;

	FUNC4(hcd->self.controller, "roothub graceful disconnect\n");
	FUNC10 (&hcd_root_hub_lock);
	hcd->rh_registered = 0;
	FUNC11 (&hcd_root_hub_lock);

#ifdef CONFIG_PM
	cancel_work_sync(&hcd->wakeup_work);
#endif
	FUNC8(&usb_bus_list_lock);
	FUNC15(&rhdev);
	FUNC9(&usb_bus_list_lock);

	/* Prevent any more root-hub status calls from the timer.
	 * The HCD might still restart the timer (if a port status change
	 * interrupt occurs), but usb_hcd_poll_rh_status() won't invoke
	 * the hub_status_data() callback.
	 */
	FUNC2(HCD_FLAG_RH_POLLABLE, &hcd->flags);
	FUNC2(HCD_FLAG_POLL_RH, &hcd->flags);
	FUNC3(&hcd->rh_timer);

	hcd->driver->stop(hcd);
	hcd->state = HC_STATE_HALT;

	/* In case the HCD restarted the timer, stop it again. */
	FUNC2(HCD_FLAG_POLL_RH, &hcd->flags);
	FUNC3(&hcd->rh_timer);

	if (FUNC17(hcd)) {
		if (hcd->irq >= 0)
			FUNC6(hcd->irq, hcd);
	}

	FUNC18(hcd->self.root_hub);
	FUNC14(&hcd->self);
	FUNC7(hcd);
}