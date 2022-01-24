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
typedef  int /*<<< orphan*/  u32 ;
struct fhci_usb {scalar_t__ port_status; TYPE_2__* fhci; } ;
struct fhci_hcd {struct fhci_usb* usb_lld; } ;
struct TYPE_4__ {TYPE_1__* regs; } ;
struct TYPE_3__ {int /*<<< orphan*/  usb_mod; } ;

/* Variables and functions */
 scalar_t__ FHCI_PORT_FULL ; 
 scalar_t__ FHCI_PORT_LOW ; 
 int /*<<< orphan*/  USB_MODE_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fhci_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct fhci_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct fhci_usb*) ; 

__attribute__((used)) static u32 FUNC4(struct fhci_hcd *fhci)
{
	struct fhci_usb *usb = fhci->usb_lld;

	FUNC3(usb);
	FUNC2(fhci);

	/* disable the usb controller */
	if (usb->port_status == FHCI_PORT_FULL ||
			usb->port_status == FHCI_PORT_LOW)
		FUNC1(fhci);

	FUNC0(&usb->fhci->regs->usb_mod, USB_MODE_EN);

	return 0;
}