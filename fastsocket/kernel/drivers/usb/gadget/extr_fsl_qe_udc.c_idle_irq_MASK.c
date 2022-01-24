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
typedef  int u8 ;
struct qe_udc {scalar_t__ usb_state; TYPE_1__* usb_regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  usb_usbs; } ;

/* Variables and functions */
 int USB_IDLE_STATUS_MASK ; 
 scalar_t__ USB_STATE_SUSPENDED ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qe_udc*) ; 
 int /*<<< orphan*/  FUNC2 (struct qe_udc*) ; 

__attribute__((used)) static void FUNC3(struct qe_udc *udc)
{
	u8 usbs;

	usbs = FUNC0(&udc->usb_regs->usb_usbs);
	if (usbs & USB_IDLE_STATUS_MASK) {
		if ((udc->usb_state) != USB_STATE_SUSPENDED)
			FUNC2(udc);
	} else {
		if (udc->usb_state == USB_STATE_SUSPENDED)
			FUNC1(udc);
	}
}