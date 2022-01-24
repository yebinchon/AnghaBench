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
struct usb_hcd {struct urb* status_urb; int /*<<< orphan*/  rh_timer; int /*<<< orphan*/  uses_new_polling; } ;
struct urb {TYPE_1__* ep; } ;
struct TYPE_2__ {int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hcd_root_hub_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct usb_hcd*,struct urb*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_hcd*,struct urb*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_hcd*,struct urb*) ; 

__attribute__((used)) static int FUNC9(struct usb_hcd *hcd, struct urb *urb, int status)
{
	unsigned long	flags;
	int		rc;

	FUNC2(&hcd_root_hub_lock, flags);
	rc = FUNC6(hcd, urb, status);
	if (rc)
		goto done;

	if (FUNC5(&urb->ep->desc) == 0) {	/* Control URB */
		;	/* Do nothing */

	} else {				/* Status URB */
		if (!hcd->uses_new_polling)
			FUNC0 (&hcd->rh_timer);
		if (urb == hcd->status_urb) {
			hcd->status_urb = NULL;
			FUNC8(hcd, urb);

			FUNC3(&hcd_root_hub_lock);
			FUNC7(hcd, urb, status);
			FUNC1(&hcd_root_hub_lock);
		}
	}
 done:
	FUNC4(&hcd_root_hub_lock, flags);
	return rc;
}