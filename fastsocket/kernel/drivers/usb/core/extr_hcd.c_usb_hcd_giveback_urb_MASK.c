#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usb_hcd {int /*<<< orphan*/  self; } ;
struct urb {int unlinked; int transfer_flags; scalar_t__ actual_length; scalar_t__ transfer_buffer_length; int status; int /*<<< orphan*/  reject; int /*<<< orphan*/  use_count; int /*<<< orphan*/  (* complete ) (struct urb*) ;int /*<<< orphan*/ * hcpriv; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int URB_SHORT_NOT_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_hcd*,struct urb*) ; 
 int /*<<< orphan*/  usb_kill_urb_queue ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct urb*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct usb_hcd *hcd, struct urb *urb, int status)
{
	urb->hcpriv = NULL;
	if (FUNC3(urb->unlinked))
		status = urb->unlinked;
	else if (FUNC3((urb->transfer_flags & URB_SHORT_NOT_OK) &&
			urb->actual_length < urb->transfer_buffer_length &&
			!status))
		status = -EREMOTEIO;

	FUNC4(hcd, urb);
	FUNC7(&hcd->self, urb, status);
	FUNC6(urb);

	/* pass ownership to the completion handler */
	urb->status = status;
	urb->complete (urb);
	FUNC0 (&urb->use_count);
	if (FUNC3(FUNC1(&urb->reject)))
		FUNC8 (&usb_kill_urb_queue);
	FUNC5 (urb);
}