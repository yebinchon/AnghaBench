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
struct usb_hcd {int dummy; } ;
struct urb {TYPE_2__* ep; int /*<<< orphan*/  urb_list; scalar_t__ unlinked; TYPE_1__* dev; int /*<<< orphan*/  reject; } ;
struct TYPE_4__ {int /*<<< orphan*/  urb_list; int /*<<< orphan*/  enabled; } ;
struct TYPE_3__ {int /*<<< orphan*/  can_submit; } ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 int ENOENT ; 
 int EPERM ; 
 int ESHUTDOWN ; 
 scalar_t__ FUNC0 (struct usb_hcd*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hcd_urb_list_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct usb_hcd *hcd, struct urb *urb)
{
	int		rc = 0;

	FUNC3(&hcd_urb_list_lock);

	/* Check that the URB isn't being killed */
	if (FUNC5(FUNC1(&urb->reject))) {
		rc = -EPERM;
		goto done;
	}

	if (FUNC5(!urb->ep->enabled)) {
		rc = -ENOENT;
		goto done;
	}

	if (FUNC5(!urb->dev->can_submit)) {
		rc = -EHOSTUNREACH;
		goto done;
	}

	/*
	 * Check the host controller's state and add the URB to the
	 * endpoint's queue.
	 */
	if (FUNC0(hcd)) {
		urb->unlinked = 0;
		FUNC2(&urb->urb_list, &urb->ep->urb_list);
	} else {
		rc = -ESHUTDOWN;
		goto done;
	}
 done:
	FUNC4(&hcd_urb_list_lock);
	return rc;
}