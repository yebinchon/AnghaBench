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
struct xhci_hcd {int hci_version; int /*<<< orphan*/  quirks; int /*<<< orphan*/  lock; } ;
struct usb_hcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  XHCI_COMP_MODE_QUIRK ; 
 int /*<<< orphan*/  XHCI_LINK_TRB_QUIRK ; 
 int /*<<< orphan*/  FUNC0 (struct xhci_hcd*) ; 
 scalar_t__ FUNC1 () ; 
 struct xhci_hcd* FUNC2 (struct usb_hcd*) ; 
 scalar_t__ link_quirk ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xhci_hcd*,char*) ; 
 int FUNC5 (struct xhci_hcd*,int /*<<< orphan*/ ) ; 

int FUNC6(struct usb_hcd *hcd)
{
	struct xhci_hcd *xhci = FUNC2(hcd);
	int retval = 0;

	FUNC4(xhci, "xhci_init\n");
	FUNC3(&xhci->lock);
	if (xhci->hci_version == 0x95 && link_quirk) {
		FUNC4(xhci, "QUIRK: Not clearing Link TRB chain bits.\n");
		xhci->quirks |= XHCI_LINK_TRB_QUIRK;
	} else {
		FUNC4(xhci, "xHCI doesn't need link TRB QUIRK\n");
	}
	retval = FUNC5(xhci, GFP_KERNEL);
	FUNC4(xhci, "Finished xhci_init\n");

	/* Initializing Compliance Mode Recovery Data If Needed */
	if (FUNC1()) {
		xhci->quirks |= XHCI_COMP_MODE_QUIRK;
		FUNC0(xhci);
	}

	return retval;
}