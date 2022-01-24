#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int otg_port; } ;
struct usb_hcd {int uses_new_polling; TYPE_1__ self; int /*<<< orphan*/  state; int /*<<< orphan*/  power_budget; } ;
struct TYPE_4__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct dummy {int /*<<< orphan*/  urbp_list; int /*<<< orphan*/  rh_state; TYPE_2__ timer; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMMY_RH_RUNNING ; 
 int /*<<< orphan*/  HC_STATE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  POWER_BUDGET ; 
 int /*<<< orphan*/  dev_attr_urbs ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dummy*) ; 
 int /*<<< orphan*/  dummy_timer ; 
 struct dummy* FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6 (struct usb_hcd *hcd)
{
	struct dummy		*dum;

	dum = FUNC3 (hcd);

	/*
	 * MASTER side init ... we emulate a root hub that'll only ever
	 * talk to one device (the slave side).  Also appears in sysfs,
	 * just like more familiar pci-based HCDs.
	 */
	FUNC5 (&dum->lock);
	FUNC4 (&dum->timer);
	dum->timer.function = dummy_timer;
	dum->timer.data = (unsigned long) dum;
	dum->rh_state = DUMMY_RH_RUNNING;

	FUNC0 (&dum->urbp_list);

	hcd->power_budget = POWER_BUDGET;
	hcd->state = HC_STATE_RUNNING;
	hcd->uses_new_polling = 1;

#ifdef CONFIG_USB_OTG
	hcd->self.otg_port = 1;
#endif

	/* FIXME 'urbs' should be a per-device thing, maybe in usbcore */
	return FUNC1 (FUNC2(dum), &dev_attr_urbs);
}