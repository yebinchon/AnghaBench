#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  speed; } ;
struct at91_udc {int suspended; struct at91_ep* ep; TYPE_2__ gadget; TYPE_1__* driver; scalar_t__ addr; } ;
struct at91_ep {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* resume ) (TYPE_2__*) ;int /*<<< orphan*/  (* suspend ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int AT91_UDP_ENDBUSRES ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int AT91_UDP_EPEDS ; 
 int AT91_UDP_EPTYPE_CTRL ; 
 int /*<<< orphan*/  AT91_UDP_ICR ; 
 int /*<<< orphan*/  AT91_UDP_IDR ; 
 int /*<<< orphan*/  AT91_UDP_IER ; 
 int /*<<< orphan*/  AT91_UDP_IMR ; 
 int /*<<< orphan*/  AT91_UDP_ISR ; 
 int AT91_UDP_RXRSM ; 
 int AT91_UDP_RXSUSP ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int MINIMUS_INTERRUPTUS ; 
 int NUM_ENDPOINTS ; 
 int /*<<< orphan*/  USB_SPEED_FULL ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct at91_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct at91_udc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct at91_ep*) ; 
 int /*<<< orphan*/  FUNC6 (struct at91_udc*) ; 
 int /*<<< orphan*/  FUNC7 (struct at91_udc*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static irqreturn_t FUNC10 (int irq, void *_udc)
{
	struct at91_udc		*udc = _udc;
	u32			rescans = 5;

	while (rescans--) {
		u32 status;

		status = FUNC3(udc, AT91_UDP_ISR)
			& FUNC3(udc, AT91_UDP_IMR);
		if (!status)
			break;

		/* USB reset irq:  not maskable */
		if (status & AT91_UDP_ENDBUSRES) {
			FUNC4(udc, AT91_UDP_IDR, ~MINIMUS_INTERRUPTUS);
			FUNC4(udc, AT91_UDP_IER, MINIMUS_INTERRUPTUS);
			/* Atmel code clears this irq twice */
			FUNC4(udc, AT91_UDP_ICR, AT91_UDP_ENDBUSRES);
			FUNC4(udc, AT91_UDP_ICR, AT91_UDP_ENDBUSRES);
			FUNC2("end bus reset\n");
			udc->addr = 0;
			FUNC7(udc);

			/* enable ep0 */
			FUNC4(udc, FUNC0(0),
					AT91_UDP_EPEDS | AT91_UDP_EPTYPE_CTRL);
			udc->gadget.speed = USB_SPEED_FULL;
			udc->suspended = 0;
			FUNC4(udc, AT91_UDP_IER, FUNC1(0));

			/*
			 * NOTE:  this driver keeps clocks off unless the
			 * USB host is present.  That saves power, but for
			 * boards that don't support VBUS detection, both
			 * clocks need to be active most of the time.
			 */

		/* host initiated suspend (3+ms bus idle) */
		} else if (status & AT91_UDP_RXSUSP) {
			FUNC4(udc, AT91_UDP_IDR, AT91_UDP_RXSUSP);
			FUNC4(udc, AT91_UDP_IER, AT91_UDP_RXRSM);
			FUNC4(udc, AT91_UDP_ICR, AT91_UDP_RXSUSP);
			// VDBG("bus suspend\n");
			if (udc->suspended)
				continue;
			udc->suspended = 1;

			/*
			 * NOTE:  when suspending a VBUS-powered device, the
			 * gadget driver should switch into slow clock mode
			 * and then into standby to avoid drawing more than
			 * 500uA power (2500uA for some high-power configs).
			 */
			if (udc->driver && udc->driver->suspend)
				udc->driver->suspend(&udc->gadget);

		/* host initiated resume */
		} else if (status & AT91_UDP_RXRSM) {
			FUNC4(udc, AT91_UDP_IDR, AT91_UDP_RXRSM);
			FUNC4(udc, AT91_UDP_IER, AT91_UDP_RXSUSP);
			FUNC4(udc, AT91_UDP_ICR, AT91_UDP_RXRSM);
			// VDBG("bus resume\n");
			if (!udc->suspended)
				continue;
			udc->suspended = 0;

			/*
			 * NOTE:  for a VBUS-powered device, the gadget driver
			 * would normally want to switch out of slow clock
			 * mode into normal mode.
			 */
			if (udc->driver && udc->driver->resume)
				udc->driver->resume(&udc->gadget);

		/* endpoint IRQs are cleared by handling them */
		} else {
			int		i;
			unsigned	mask = 1;
			struct at91_ep	*ep = &udc->ep[1];

			if (status & mask)
				FUNC6(udc);
			for (i = 1; i < NUM_ENDPOINTS; i++) {
				mask <<= 1;
				if (status & mask)
					FUNC5(ep);
				ep++;
			}
		}
	}

	return IRQ_HANDLED;
}