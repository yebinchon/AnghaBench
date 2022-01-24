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
typedef  int u8 ;
struct td {struct packet* pkt; } ;
struct packet {int /*<<< orphan*/  status; } ;
struct fhci_usb {TYPE_2__* fhci; TYPE_3__* actual_frame; } ;
struct TYPE_6__ {int /*<<< orphan*/  frame_status; } ;
struct TYPE_5__ {TYPE_1__* regs; } ;
struct TYPE_4__ {int /*<<< orphan*/  usb_mod; int /*<<< orphan*/  usb_event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FRAME_END_TRANSMISSION ; 
 int USB_MODE_EN ; 
 int /*<<< orphan*/  USB_TD_TX_ER_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fhci_usb*) ; 
 struct td* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct fhci_usb*,struct packet*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

void FUNC7(struct fhci_usb *usb)
{
	u8 mode;
	struct td *td;

	mode = FUNC4(&usb->fhci->regs->usb_mod);
	FUNC0(&usb->fhci->regs->usb_mod, USB_MODE_EN);

	FUNC1(usb);

	while ((td = FUNC2(usb->actual_frame)) != NULL) {
		struct packet *pkt = td->pkt;

		pkt->status = USB_TD_TX_ER_TIMEOUT;
		FUNC3(usb, pkt);
	}

	usb->actual_frame->frame_status = FRAME_END_TRANSMISSION;

	/* reset the event register */
	FUNC6(&usb->fhci->regs->usb_event, 0xffff);
	/* enable the USB controller */
	FUNC5(&usb->fhci->regs->usb_mod, mode | USB_MODE_EN);
}