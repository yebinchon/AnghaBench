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
struct vhci_hcd {int* port_status; int /*<<< orphan*/  lock; } ;
struct usb_hcd {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_hcd*) ; 
 scalar_t__ HC_STATE_SUSPENDED ; 
 int PORT_C_MASK ; 
 int VHCI_NPORTS ; 
 struct vhci_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static int FUNC7(struct usb_hcd *hcd, char *buf)
{
	struct vhci_hcd	*vhci;
	unsigned long	flags;
	int		retval = 0;

	/* the enough buffer is allocated according to USB_MAXCHILDREN */
	unsigned long	*event_bits = (unsigned long *) buf;
	int		rhport;
	int		changed = 0;


	*event_bits = 0;

	vhci = FUNC1(hcd);

	FUNC2(&vhci->lock, flags);
	if (!FUNC0(hcd)) {
		FUNC5("hw accessible flag in on?\n");
		goto done;
	}

	/* check pseudo status register for each port */
	for (rhport = 0; rhport < VHCI_NPORTS; rhport++) {
		if ((vhci->port_status[rhport] & PORT_C_MASK)) {
			/* The status of a port has been changed, */
			FUNC5("port %d is changed\n", rhport);

			*event_bits |= 1 << (rhport + 1);
			changed = 1;
		}
	}

	FUNC6("changed %d\n", changed);

	if (hcd->state == HC_STATE_SUSPENDED)
		FUNC4(hcd);

	if (changed)
		retval = 1 + (VHCI_NPORTS / 8);
	else
		retval = 0;

done:
	FUNC3(&vhci->lock, flags);
	return retval;
}