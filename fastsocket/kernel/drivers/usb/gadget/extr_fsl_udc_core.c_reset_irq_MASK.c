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
typedef  int u32 ;
struct TYPE_3__ {scalar_t__ a_alt_hnp_support; scalar_t__ a_hnp_support; scalar_t__ b_hnp_enable; } ;
struct fsl_udc {int /*<<< orphan*/  usb_state; TYPE_1__ gadget; scalar_t__ remote_wakeup; int /*<<< orphan*/  ep0_state; scalar_t__ ep0_dir; scalar_t__ resume_state; scalar_t__ device_address; } ;
struct TYPE_4__ {int /*<<< orphan*/  portsc1; int /*<<< orphan*/  endptflush; int /*<<< orphan*/  endpointprime; int /*<<< orphan*/  endptcomplete; int /*<<< orphan*/  endptsetupstat; int /*<<< orphan*/  deviceaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int PORTSCX_PORT_RESET ; 
 int USB_DEVICE_ADDRESS_MASK ; 
 int /*<<< orphan*/  USB_STATE_ATTACHED ; 
 int /*<<< orphan*/  USB_STATE_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  WAIT_FOR_SETUP ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct fsl_udc*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsl_udc*) ; 
 TYPE_2__* dr_regs ; 
 int /*<<< orphan*/  FUNC5 (struct fsl_udc*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC8 (struct fsl_udc*) ; 
 scalar_t__ FUNC9 (int,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct fsl_udc *udc)
{
	u32 temp;
	unsigned long timeout;

	/* Clear the device address */
	temp = FUNC6(&dr_regs->deviceaddr);
	FUNC7(temp & ~USB_DEVICE_ADDRESS_MASK, &dr_regs->deviceaddr);

	udc->device_address = 0;

	/* Clear usb state */
	udc->resume_state = 0;
	udc->ep0_dir = 0;
	udc->ep0_state = WAIT_FOR_SETUP;
	udc->remote_wakeup = 0;	/* default to 0 on reset */
	udc->gadget.b_hnp_enable = 0;
	udc->gadget.a_hnp_support = 0;
	udc->gadget.a_alt_hnp_support = 0;

	/* Clear all the setup token semaphores */
	temp = FUNC6(&dr_regs->endptsetupstat);
	FUNC7(temp, &dr_regs->endptsetupstat);

	/* Clear all the endpoint complete status bits */
	temp = FUNC6(&dr_regs->endptcomplete);
	FUNC7(temp, &dr_regs->endptcomplete);

	timeout = jiffies + 100;
	while (FUNC6(&dr_regs->endpointprime)) {
		/* Wait until all endptprime bits cleared */
		if (FUNC9(jiffies, timeout)) {
			FUNC0("Timeout for reset\n");
			break;
		}
		FUNC2();
	}

	/* Write 1s to the flush register */
	FUNC7(0xffffffff, &dr_regs->endptflush);

	if (FUNC6(&dr_regs->portsc1) & PORTSCX_PORT_RESET) {
		FUNC1("Bus reset");
		/* Reset all the queues, include XD, dTD, EP queue
		 * head and TR Queue */
		FUNC8(udc);
		udc->usb_state = USB_STATE_DEFAULT;
	} else {
		FUNC1("Controller reset");
		/* initialize usb hw reg except for regs for EP, not
		 * touch usbintr reg */
		FUNC4(udc);

		/* Reset all internal used Queues */
		FUNC8(udc);

		FUNC5(udc);

		/* Enable DR IRQ reg, Set Run bit, change udc state */
		FUNC3(udc);
		udc->usb_state = USB_STATE_ATTACHED;
	}
}