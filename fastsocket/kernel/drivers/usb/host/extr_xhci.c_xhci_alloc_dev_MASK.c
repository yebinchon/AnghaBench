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
typedef  union xhci_trb {int dummy; } xhci_trb ;
struct xhci_hcd {int quirks; int /*<<< orphan*/  lock; scalar_t__ slot_id; int /*<<< orphan*/  num_active_eps; int /*<<< orphan*/  addr_dev; TYPE_1__* cmd_ring; } ;
struct usb_hcd {int dummy; } ;
struct usb_device {scalar_t__ slot_id; } ;
struct TYPE_2__ {union xhci_trb* dequeue; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  TRB_DISABLE_SLOT ; 
 int /*<<< orphan*/  TRB_ENABLE_SLOT ; 
 int /*<<< orphan*/  XHCI_CMD_DEFAULT_TIMEOUT ; 
 int XHCI_EP_LIMIT_QUIRK ; 
 struct xhci_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xhci_hcd*,scalar_t__,struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct xhci_hcd*,int /*<<< orphan*/ *,union xhci_trb*) ; 
 int /*<<< orphan*/  FUNC6 (struct xhci_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct xhci_hcd*,char*) ; 
 int FUNC8 (struct xhci_hcd*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC9 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC10 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC11 (struct xhci_hcd*,char*,...) ; 

int FUNC12(struct usb_hcd *hcd, struct usb_device *udev)
{
	struct xhci_hcd *xhci = FUNC0(hcd);
	unsigned long flags;
	int timeleft;
	int ret;
	union xhci_trb *cmd_trb;

	FUNC1(&xhci->lock, flags);
	cmd_trb = xhci->cmd_ring->dequeue;
	ret = FUNC8(xhci, TRB_ENABLE_SLOT, 0);
	if (ret) {
		FUNC2(&xhci->lock, flags);
		FUNC6(xhci, "FIXME: allocate a command ring segment\n");
		return 0;
	}
	FUNC10(xhci);
	FUNC2(&xhci->lock, flags);

	/* XXX: how much time for xHC slot assignment? */
	timeleft = FUNC3(&xhci->addr_dev,
			XHCI_CMD_DEFAULT_TIMEOUT);
	if (timeleft <= 0) {
		FUNC11(xhci, "%s while waiting for a slot\n",
				timeleft == 0 ? "Timeout" : "Signal");
		/* cancel the enable slot request */
		return FUNC5(xhci, NULL, cmd_trb);
	}

	if (!xhci->slot_id) {
		FUNC7(xhci, "Error while assigning device slot ID\n");
		return 0;
	}

	if ((xhci->quirks & XHCI_EP_LIMIT_QUIRK)) {
		FUNC1(&xhci->lock, flags);
		ret = FUNC9(xhci);
		if (ret) {
			FUNC2(&xhci->lock, flags);
			FUNC11(xhci, "Not enough host resources, "
					"active endpoint contexts = %u\n",
					xhci->num_active_eps);
			goto disable_slot;
		}
		FUNC2(&xhci->lock, flags);
	}
	/* Use GFP_NOIO, since this function can be called from
	 * xhci_discover_or_reset_device(), which may be called as part of
	 * mass storage driver error handling.
	 */
	if (!FUNC4(xhci, xhci->slot_id, udev, GFP_NOIO)) {
		FUNC11(xhci, "Could not allocate xHCI USB device data structures\n");
		goto disable_slot;
	}
	udev->slot_id = xhci->slot_id;
	/* Is this a LS or FS device under a HS hub? */
	/* Hub or peripherial? */
	return 1;

disable_slot:
	/* Disable slot, if we can do it without mem alloc */
	FUNC1(&xhci->lock, flags);
	if (!FUNC8(xhci, TRB_DISABLE_SLOT, udev->slot_id))
		FUNC10(xhci);
	FUNC2(&xhci->lock, flags);
	return 0;
}