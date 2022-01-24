#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  root_hub; int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_1__ self; int /*<<< orphan*/  flags; scalar_t__ rh_registered; struct usb_hcd* shared_hcd; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCD_FLAG_DEAD ; 
 int /*<<< orphan*/  HCD_FLAG_POLL_RH ; 
 int /*<<< orphan*/  HCD_FLAG_RH_RUNNING ; 
 int /*<<< orphan*/  USB_STATE_NOTATTACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hcd_root_hub_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8 (struct usb_hcd *hcd)
{
	unsigned long flags;

	FUNC1 (hcd->self.controller, "HC died; cleaning up\n");

	FUNC3 (&hcd_root_hub_lock, flags);
	FUNC0(HCD_FLAG_RH_RUNNING, &hcd->flags);
	FUNC2(HCD_FLAG_DEAD, &hcd->flags);
	if (hcd->rh_registered) {
		FUNC0(HCD_FLAG_POLL_RH, &hcd->flags);

		/* make khubd clean up old urbs and devices */
		FUNC7 (hcd->self.root_hub,
				USB_STATE_NOTATTACHED);
		FUNC6 (hcd->self.root_hub);
	}
	if (FUNC5(hcd) && hcd->shared_hcd) {
		hcd = hcd->shared_hcd;
		if (hcd->rh_registered) {
			FUNC0(HCD_FLAG_POLL_RH, &hcd->flags);

			/* make khubd clean up old urbs and devices */
			FUNC7(hcd->self.root_hub,
					USB_STATE_NOTATTACHED);
			FUNC6(hcd->self.root_hub);
		}
	}
	FUNC4 (&hcd_root_hub_lock, flags);
	/* Make sure that the other roothub is also deallocated. */
}