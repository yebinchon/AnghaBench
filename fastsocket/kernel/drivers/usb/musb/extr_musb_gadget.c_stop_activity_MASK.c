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
struct usb_gadget_driver {int /*<<< orphan*/  (* disconnect ) (TYPE_1__*) ;} ;
struct musb_hw_ep {int /*<<< orphan*/  ep_out; scalar_t__ max_packet_sz_rx; int /*<<< orphan*/  ep_in; scalar_t__ max_packet_sz_tx; scalar_t__ is_shared_fifo; } ;
struct TYPE_2__ {scalar_t__ speed; } ;
struct musb {int nr_endpoints; int /*<<< orphan*/  lock; TYPE_1__ g; int /*<<< orphan*/  mregs; struct musb_hw_ep* endpoints; scalar_t__ softconnect; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESHUTDOWN ; 
 scalar_t__ USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct musb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct musb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(struct musb *musb, struct usb_gadget_driver *driver)
{
	int			i;
	struct musb_hw_ep	*hw_ep;

	/* don't disconnect if it's not connected */
	if (musb->g.speed == USB_SPEED_UNKNOWN)
		driver = NULL;
	else
		musb->g.speed = USB_SPEED_UNKNOWN;

	/* deactivate the hardware */
	if (musb->softconnect) {
		musb->softconnect = 0;
		FUNC1(musb, 0);
	}
	FUNC2(musb);

	/* killing any outstanding requests will quiesce the driver;
	 * then report disconnect
	 */
	if (driver) {
		for (i = 0, hw_ep = musb->endpoints;
				i < musb->nr_endpoints;
				i++, hw_ep++) {
			FUNC0(musb->mregs, i);
			if (hw_ep->is_shared_fifo /* || !epnum */) {
				FUNC3(&hw_ep->ep_in, -ESHUTDOWN);
			} else {
				if (hw_ep->max_packet_sz_tx)
					FUNC3(&hw_ep->ep_in, -ESHUTDOWN);
				if (hw_ep->max_packet_sz_rx)
					FUNC3(&hw_ep->ep_out, -ESHUTDOWN);
			}
		}

		FUNC5(&musb->lock);
		driver->disconnect(&musb->g);
		FUNC4(&musb->lock);
	}
}