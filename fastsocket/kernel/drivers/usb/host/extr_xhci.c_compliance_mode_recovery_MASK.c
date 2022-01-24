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
typedef  int u32 ;
struct xhci_hcd {int num_usb3_ports; int port_status_u0; int /*<<< orphan*/  comp_mode_recovery_timer; struct usb_hcd* shared_hcd; int /*<<< orphan*/ * usb3_ports; } ;
struct usb_hcd {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_MODE_RCVRY_MSECS ; 
 scalar_t__ HC_STATE_SUSPENDED ; 
 int PORT_PLS_MASK ; 
 int USB_SS_PORT_LS_COMP_MOD ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct xhci_hcd*,char*,...) ; 
 int FUNC5 (struct xhci_hcd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(unsigned long arg)
{
	struct xhci_hcd *xhci;
	struct usb_hcd *hcd;
	u32 temp;
	int i;

	xhci = (struct xhci_hcd *)arg;

	for (i = 0; i < xhci->num_usb3_ports; i++) {
		temp = FUNC5(xhci, xhci->usb3_ports[i]);
		if ((temp & PORT_PLS_MASK) == USB_SS_PORT_LS_COMP_MOD) {
			/*
			 * Compliance Mode Detected. Letting USB Core
			 * handle the Warm Reset
			 */
			FUNC4(xhci, "Compliance mode detected->port %d\n",
					i + 1);
			FUNC4(xhci, "Attempting compliance mode recovery\n");
			hcd = xhci->shared_hcd;

			if (hcd->state == HC_STATE_SUSPENDED)
				FUNC3(hcd);

			FUNC2(hcd);
		}
	}

	if (xhci->port_status_u0 != ((1 << xhci->num_usb3_ports)-1))
		FUNC0(&xhci->comp_mode_recovery_timer,
			jiffies + FUNC1(COMP_MODE_RCVRY_MSECS));
}