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
struct TYPE_4__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {int /*<<< orphan*/  rh_timer; int /*<<< orphan*/  uses_new_polling; struct urb* status_urb; TYPE_2__ self; } ;
struct urb {unsigned int transfer_buffer_length; struct usb_hcd* hcpriv; TYPE_1__* dev; } ;
struct TYPE_3__ {int maxchild; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct usb_hcd*) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hcd_root_hub_lock ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (struct usb_hcd*,struct urb*) ; 

__attribute__((used)) static int FUNC6 (struct usb_hcd *hcd, struct urb *urb)
{
	int		retval;
	unsigned long	flags;
	unsigned	len = 1 + (urb->dev->maxchild / 8);

	FUNC3 (&hcd_root_hub_lock, flags);
	if (hcd->status_urb || urb->transfer_buffer_length < len) {
		FUNC1 (hcd->self.controller, "not queuing rh status urb\n");
		retval = -EINVAL;
		goto done;
	}

	retval = FUNC5(hcd, urb);
	if (retval)
		goto done;

	hcd->status_urb = urb;
	urb->hcpriv = hcd;	/* indicate it's queued */
	if (!hcd->uses_new_polling)
		FUNC2(&hcd->rh_timer, (jiffies/(HZ/4) + 1) * (HZ/4));

	/* If a status change has already occurred, report it ASAP */
	else if (FUNC0(hcd))
		FUNC2(&hcd->rh_timer, jiffies);
	retval = 0;
 done:
	FUNC4 (&hcd_root_hub_lock, flags);
	return retval;
}