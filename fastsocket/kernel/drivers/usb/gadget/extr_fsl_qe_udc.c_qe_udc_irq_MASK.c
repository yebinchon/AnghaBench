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
typedef  int u16 ;
struct qe_udc {int /*<<< orphan*/  lock; TYPE_1__* usb_regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  usb_usber; int /*<<< orphan*/  usb_usbmr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int USB_E_BSY_MASK ; 
 int USB_E_IDLE_MASK ; 
 int USB_E_RESET_MASK ; 
 int USB_E_RXB_MASK ; 
 int USB_E_TXB_MASK ; 
 int USB_E_TXE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct qe_udc*) ; 
 int /*<<< orphan*/  FUNC1 (struct qe_udc*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qe_udc*) ; 
 int /*<<< orphan*/  FUNC5 (struct qe_udc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct qe_udc*) ; 
 int /*<<< orphan*/  FUNC9 (struct qe_udc*) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *_udc)
{
	struct qe_udc *udc = (struct qe_udc *)_udc;
	u16 irq_src;
	irqreturn_t status = IRQ_NONE;
	unsigned long flags;

	FUNC6(&udc->lock, flags);

	irq_src = FUNC2(&udc->usb_regs->usb_usber) &
		FUNC2(&udc->usb_regs->usb_usbmr);
	/* Clear notification bits */
	FUNC3(&udc->usb_regs->usb_usber, irq_src);
	/* USB Interrupt */
	if (irq_src & USB_E_IDLE_MASK) {
		FUNC1(udc);
		irq_src &= ~USB_E_IDLE_MASK;
		status = IRQ_HANDLED;
	}

	if (irq_src & USB_E_TXB_MASK) {
		FUNC8(udc);
		irq_src &= ~USB_E_TXB_MASK;
		status = IRQ_HANDLED;
	}

	if (irq_src & USB_E_RXB_MASK) {
		FUNC5(udc);
		irq_src &= ~USB_E_RXB_MASK;
		status = IRQ_HANDLED;
	}

	if (irq_src & USB_E_RESET_MASK) {
		FUNC4(udc);
		irq_src &= ~USB_E_RESET_MASK;
		status = IRQ_HANDLED;
	}

	if (irq_src & USB_E_BSY_MASK) {
		FUNC0(udc);
		irq_src &= ~USB_E_BSY_MASK;
		status = IRQ_HANDLED;
	}

	if (irq_src & USB_E_TXE_MASK) {
		FUNC9(udc);
		irq_src &= ~USB_E_TXE_MASK;
		status = IRQ_HANDLED;
	}

	FUNC7(&udc->lock, flags);

	return status;
}