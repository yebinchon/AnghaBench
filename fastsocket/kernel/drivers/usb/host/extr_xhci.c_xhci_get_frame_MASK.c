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
struct xhci_hcd {TYPE_1__* run_regs; } ;
struct usb_hcd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  microframe_index; } ;

/* Variables and functions */
 struct xhci_hcd* FUNC0 (struct usb_hcd*) ; 
 int FUNC1 (struct xhci_hcd*,int /*<<< orphan*/ *) ; 

int FUNC2(struct usb_hcd *hcd)
{
	struct xhci_hcd *xhci = FUNC0(hcd);
	/* EHCI mods by the periodic size.  Why? */
	return FUNC1(xhci, &xhci->run_regs->microframe_index) >> 3;
}