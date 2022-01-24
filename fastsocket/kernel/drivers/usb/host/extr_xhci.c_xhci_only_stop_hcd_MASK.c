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
struct xhci_hcd {int /*<<< orphan*/  lock; int /*<<< orphan*/ * shared_hcd; } ;
struct usb_hcd {int dummy; } ;

/* Variables and functions */
 struct xhci_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_hcd*) ; 

__attribute__((used)) static void FUNC4(struct usb_hcd *hcd)
{
	struct xhci_hcd *xhci = FUNC0(hcd);

	FUNC1(&xhci->lock);
	FUNC3(xhci);

	/* The shared_hcd is going to be deallocated shortly (the USB core only
	 * calls this function when allocation fails in usb_add_hcd(), or
	 * usb_remove_hcd() is called).  So we need to unset xHCI's pointer.
	 */
	xhci->shared_hcd = NULL;
	FUNC2(&xhci->lock);
}