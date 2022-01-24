#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* xhci_get_quirks_t ) (struct device*,struct xhci_hcd*) ;
typedef  int u32 ;
struct xhci_hcd {int hcs_params1; int hcs_params2; int hcs_params3; int hcc_params; TYPE_2__* cap_regs; int /*<<< orphan*/  hci_version; TYPE_2__* run_regs; TYPE_2__* op_regs; struct usb_hcd* main_hcd; } ;
struct TYPE_6__ {int no_stop_on_short; struct device* controller; TYPE_1__* root_hub; int /*<<< orphan*/  sg_tablesize; } ;
struct usb_hcd {int has_tt; TYPE_3__ self; TYPE_2__* regs; int /*<<< orphan*/  speed; scalar_t__ hcd_priv; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  hcc_params; int /*<<< orphan*/  hc_capbase; int /*<<< orphan*/  hcs_params3; int /*<<< orphan*/  hcs_params2; int /*<<< orphan*/  hcs_params1; int /*<<< orphan*/  run_regs_off; } ;
struct TYPE_4__ {int /*<<< orphan*/  speed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  HCD_USB2 ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int RTSOFF_MASK ; 
 int /*<<< orphan*/  USB_SPEED_HIGH ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ) ; 
 struct xhci_hcd* FUNC5 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (struct xhci_hcd*) ; 
 struct xhci_hcd* FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC9 (struct xhci_hcd*,char*) ; 
 int FUNC10 (struct xhci_hcd*) ; 
 int FUNC11 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC12 (struct xhci_hcd*) ; 
 int FUNC13 (struct xhci_hcd*,int /*<<< orphan*/ *) ; 
 int FUNC14 (struct xhci_hcd*) ; 

int FUNC15(struct usb_hcd *hcd, xhci_get_quirks_t get_quirks)
{
	struct xhci_hcd		*xhci;
	struct device		*dev = hcd->self.controller;
	int			retval;
	u32			temp;

	/* Accept arbitrarily long scatter-gather lists */
	hcd->self.sg_tablesize = ~0;
	/* XHCI controllers don't stop the ep queue on short packets :| */
	hcd->self.no_stop_on_short = 1;

	if (FUNC8(hcd)) {
		xhci = FUNC7(sizeof(struct xhci_hcd), GFP_KERNEL);
		if (!xhci)
			return -ENOMEM;
		*((struct xhci_hcd **) hcd->hcd_priv) = xhci;
		xhci->main_hcd = hcd;
		/* Mark the first roothub as being USB 2.0.
		 * The xHCI driver will register the USB 3.0 roothub.
		 */
		hcd->speed = HCD_USB2;
		hcd->self.root_hub->speed = USB_SPEED_HIGH;
		/*
		 * USB 2.0 roothub under xHCI has an integrated TT,
		 * (rate matching hub) as opposed to having an OHCI/UHCI
		 * companion controller.
		 */
		hcd->has_tt = 1;
	} else {
		/* xHCI private pointer was set in xhci_pci_probe for the second
		 * registered roothub.
		 */
		xhci = FUNC5(hcd);
		temp = FUNC13(xhci, &xhci->cap_regs->hcc_params);
		if (FUNC1(temp)) {
			FUNC9(xhci, "Enabling 64-bit DMA addresses.\n");
			FUNC4(hcd->self.controller, FUNC0(64));
		} else {
			FUNC4(hcd->self.controller, FUNC0(32));
		}
		return 0;
	}

	xhci->cap_regs = hcd->regs;
	xhci->op_regs = hcd->regs +
		FUNC2(FUNC13(xhci, &xhci->cap_regs->hc_capbase));
	xhci->run_regs = hcd->regs +
		(FUNC13(xhci, &xhci->cap_regs->run_regs_off) & RTSOFF_MASK);
	/* Cache read-only capability registers */
	xhci->hcs_params1 = FUNC13(xhci, &xhci->cap_regs->hcs_params1);
	xhci->hcs_params2 = FUNC13(xhci, &xhci->cap_regs->hcs_params2);
	xhci->hcs_params3 = FUNC13(xhci, &xhci->cap_regs->hcs_params3);
	xhci->hcc_params = FUNC13(xhci, &xhci->cap_regs->hc_capbase);
	xhci->hci_version = FUNC3(xhci->hcc_params);
	xhci->hcc_params = FUNC13(xhci, &xhci->cap_regs->hcc_params);
	FUNC12(xhci);

	get_quirks(dev, xhci);

	/* Make sure the HC is halted. */
	retval = FUNC10(xhci);
	if (retval)
		goto error;

	FUNC9(xhci, "Resetting HCD\n");
	/* Reset the internal HC memory state and registers. */
	retval = FUNC14(xhci);
	if (retval)
		goto error;
	FUNC9(xhci, "Reset complete\n");

	temp = FUNC13(xhci, &xhci->cap_regs->hcc_params);
	if (FUNC1(temp)) {
		FUNC9(xhci, "Enabling 64-bit DMA addresses.\n");
		FUNC4(hcd->self.controller, FUNC0(64));
	} else {
		FUNC4(hcd->self.controller, FUNC0(32));
	}

	FUNC9(xhci, "Calling HCD init\n");
	/* Initialize HCD and host controller data structures. */
	retval = FUNC11(hcd);
	if (retval)
		goto error;
	FUNC9(xhci, "Called HCD init\n");
	return 0;
error:
	FUNC6(xhci);
	return retval;
}