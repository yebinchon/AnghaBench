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
typedef  int u16 ;
struct usb_hcd {int dummy; } ;
struct fhci_usb {scalar_t__ port_status; int saved_msk; TYPE_2__* fhci; } ;
struct fhci_hcd {int /*<<< orphan*/  lock; struct fhci_usb* usb_lld; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {TYPE_1__* regs; } ;
struct TYPE_3__ {int /*<<< orphan*/  usb_mask; int /*<<< orphan*/  usb_event; } ;

/* Variables and functions */
 scalar_t__ FHCI_PORT_DISABLED ; 
 scalar_t__ FHCI_PORT_DISCONNECTING ; 
 scalar_t__ FHCI_PORT_FULL ; 
 scalar_t__ FHCI_PORT_LOW ; 
 scalar_t__ FHCI_PORT_WAITING ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int USB_E_IDLE_MASK ; 
 int USB_E_MSF_MASK ; 
 int USB_E_RESET_MASK ; 
 int USB_E_SFT_MASK ; 
 int USB_E_SOF_MASK ; 
 int USB_E_TXB_MASK ; 
 int USB_E_TXE1_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct fhci_usb*) ; 
 int /*<<< orphan*/  FUNC1 (struct fhci_hcd*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fhci_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct fhci_hcd*) ; 
 int FUNC4 (struct fhci_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (struct fhci_usb*) ; 
 struct fhci_hcd* FUNC6 (struct usb_hcd*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct fhci_hcd*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

irqreturn_t FUNC12(struct usb_hcd *hcd)
{
	struct fhci_hcd *fhci = FUNC6(hcd);
	struct fhci_usb *usb;
	u16 usb_er = 0;
	unsigned long flags;

	FUNC10(&fhci->lock, flags);

	usb = fhci->usb_lld;

	usb_er |= FUNC7(&usb->fhci->regs->usb_event) &
		  FUNC7(&usb->fhci->regs->usb_mask);

	/* clear event bits for next time */
	FUNC8(&usb->fhci->regs->usb_event, usb_er);

	FUNC1(fhci, usb_er);

	if (usb_er & USB_E_RESET_MASK) {
		if ((usb->port_status == FHCI_PORT_FULL) ||
				(usb->port_status == FHCI_PORT_LOW)) {
			FUNC3(fhci);
			usb_er &= ~USB_E_IDLE_MASK;
		} else if (usb->port_status == FHCI_PORT_WAITING) {
			usb->port_status = FHCI_PORT_DISCONNECTING;

			/* Turn on IDLE since we want to disconnect */
			usb->saved_msk |= USB_E_IDLE_MASK;
			FUNC8(&usb->fhci->regs->usb_event,
				 usb->saved_msk);
		} else if (usb->port_status == FHCI_PORT_DISABLED) {
			if (FUNC4(fhci) == 1)
				FUNC2(fhci);
		}
		usb_er &= ~USB_E_RESET_MASK;
	}

	if (usb_er & USB_E_MSF_MASK) {
		FUNC0(fhci->usb_lld);
		usb_er &= ~USB_E_MSF_MASK;
	}

	if (usb_er & (USB_E_SOF_MASK | USB_E_SFT_MASK)) {
		FUNC9(fhci);
		usb_er &= ~(USB_E_SOF_MASK | USB_E_SFT_MASK);
	}

	if (usb_er & USB_E_TXB_MASK) {
		FUNC5(fhci->usb_lld);
		usb_er &= ~USB_E_TXB_MASK;
	}

	if (usb_er & USB_E_TXE1_MASK) {
		FUNC5(fhci->usb_lld);
		usb_er &= ~USB_E_TXE1_MASK;
	}

	if (usb_er & USB_E_IDLE_MASK) {
		if (usb->port_status == FHCI_PORT_DISABLED) {
			usb_er &= ~USB_E_RESET_MASK;
			FUNC2(fhci);
		} else if (usb->port_status ==
				FHCI_PORT_DISCONNECTING) {
			/* XXX usb->port_status = FHCI_PORT_WAITING; */
			/* Disable IDLE */
			usb->saved_msk &= ~USB_E_IDLE_MASK;
			FUNC8(&usb->fhci->regs->usb_mask,
				 usb->saved_msk);
		} else {
			FUNC1(fhci, -1);
		}

		usb_er &= ~USB_E_IDLE_MASK;
	}

	FUNC11(&fhci->lock, flags);

	return IRQ_HANDLED;
}