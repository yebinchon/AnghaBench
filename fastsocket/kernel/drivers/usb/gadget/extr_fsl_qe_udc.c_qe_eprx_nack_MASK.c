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
typedef  size_t u8 ;
struct qe_udc {TYPE_1__* usb_regs; } ;
struct qe_ep {size_t epnum; scalar_t__ state; struct qe_udc* udc; } ;
struct TYPE_2__ {int /*<<< orphan*/  usb_usbmr; int /*<<< orphan*/ * usb_usep; } ;

/* Variables and functions */
 scalar_t__ EP_STATE_IDLE ; 
 scalar_t__ EP_STATE_NACK ; 
 int USB_E_BSY_MASK ; 
 int USB_E_RXB_MASK ; 
 int /*<<< orphan*/  USB_RHS_MASK ; 
 int /*<<< orphan*/  USB_RHS_NACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct qe_ep *ep)
{
	u8 epnum = ep->epnum;
	struct qe_udc *udc = ep->udc;

	if (ep->state == EP_STATE_IDLE) {
		/* Set the ep's nack */
		FUNC1(&udc->usb_regs->usb_usep[epnum],
				USB_RHS_MASK, USB_RHS_NACK);

		/* Mask Rx and Busy interrupts */
		FUNC0(&udc->usb_regs->usb_usbmr,
				(USB_E_RXB_MASK | USB_E_BSY_MASK));

		ep->state = EP_STATE_NACK;
	}
	return 0;
}