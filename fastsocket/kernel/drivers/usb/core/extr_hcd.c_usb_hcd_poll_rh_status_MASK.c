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
struct usb_hcd {int /*<<< orphan*/  rh_timer; struct urb* status_urb; scalar_t__ uses_new_polling; int /*<<< orphan*/  flags; TYPE_1__* driver; } ;
struct urb {int actual_length; int /*<<< orphan*/  transfer_buffer; } ;
struct TYPE_2__ {int (* hub_status_data ) (struct usb_hcd*,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HCD_FLAG_POLL_PENDING ; 
 int FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_hcd*) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hcd_root_hub_lock ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC10 (struct usb_hcd*,char*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_hcd*,struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_hcd*,struct urb*) ; 

void FUNC14(struct usb_hcd *hcd)
{
	struct urb	*urb;
	int		length;
	unsigned long	flags;
	char		buffer[6];	/* Any root hubs with > 31 ports? */

	if (FUNC11(!FUNC1(hcd)))
		return;
	if (!hcd->uses_new_polling && !hcd->status_urb)
		return;

	length = hcd->driver->hub_status_data(hcd, buffer);
	if (length > 0) {

		/* try to complete the status urb */
		FUNC7(&hcd_root_hub_lock, flags);
		urb = hcd->status_urb;
		if (urb) {
			FUNC2(HCD_FLAG_POLL_PENDING, &hcd->flags);
			hcd->status_urb = NULL;
			urb->actual_length = length;
			FUNC3(urb->transfer_buffer, buffer, length);

			FUNC13(hcd, urb);
			FUNC8(&hcd_root_hub_lock);
			FUNC12(hcd, urb, 0);
			FUNC6(&hcd_root_hub_lock);
		} else {
			length = 0;
			FUNC5(HCD_FLAG_POLL_PENDING, &hcd->flags);
		}
		FUNC9(&hcd_root_hub_lock, flags);
	}

	/* The USB 2.0 spec says 256 ms.  This is close enough and won't
	 * exceed that limit if HZ is 100. The math is more clunky than
	 * maybe expected, this is to make sure that all timers for USB devices
	 * fire at the same time to give the CPU a break inbetween */
	if (hcd->uses_new_polling ? FUNC0(hcd) :
			(length == 0 && hcd->status_urb != NULL))
		FUNC4 (&hcd->rh_timer, (jiffies/(HZ/4) + 1) * (HZ/4));
}