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
struct xhci_hcd {int quirks; TYPE_2__* op_regs; int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct TYPE_4__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int XHCI_SPURIOUS_REBOOT ; 
 struct xhci_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (struct xhci_hcd*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC8 (struct xhci_hcd*,int /*<<< orphan*/ *) ; 

void FUNC9(struct usb_hcd *hcd)
{
	struct xhci_hcd *xhci = FUNC0(hcd);

	if (xhci->quirks & XHCI_SPURIOUS_REBOOT)
		FUNC4(FUNC3(hcd->self.controller));

	FUNC1(&xhci->lock);
	FUNC7(xhci);
	FUNC2(&xhci->lock);

	FUNC5(xhci);

	FUNC6(xhci, "xhci_shutdown completed - status = %x\n",
		    FUNC8(xhci, &xhci->op_regs->status));
}