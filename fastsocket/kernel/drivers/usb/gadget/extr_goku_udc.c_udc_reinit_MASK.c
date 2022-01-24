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
struct TYPE_5__ {int /*<<< orphan*/  ep_list; int /*<<< orphan*/  speed; TYPE_3__* ep0; } ;
struct goku_udc {struct goku_ep* ep; TYPE_2__ gadget; TYPE_1__* regs; scalar_t__ irqs; int /*<<< orphan*/  ep0state; } ;
struct TYPE_6__ {char* name; int /*<<< orphan*/  ep_list; int /*<<< orphan*/  maxpacket; int /*<<< orphan*/ * ops; } ;
struct goku_ep {unsigned int num; TYPE_3__ ep; int /*<<< orphan*/ * reg_mode; int /*<<< orphan*/  queue; struct goku_udc* dev; int /*<<< orphan*/ * reg_status; int /*<<< orphan*/ * reg_fifo; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ep_mode; int /*<<< orphan*/ * ep_status; int /*<<< orphan*/ * ep_fifo; } ;

/* Variables and functions */
 int /*<<< orphan*/  EP0_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_EP0_SIZE ; 
 int /*<<< orphan*/  USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct goku_ep*) ; 
 int /*<<< orphan*/  goku_ep_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4 (struct goku_udc *dev)
{
	static char *names [] = { "ep0", "ep1-bulk", "ep2-bulk", "ep3-bulk" };

	unsigned i;

	FUNC0 (&dev->gadget.ep_list);
	dev->gadget.ep0 = &dev->ep [0].ep;
	dev->gadget.speed = USB_SPEED_UNKNOWN;
	dev->ep0state = EP0_DISCONNECT;
	dev->irqs = 0;

	for (i = 0; i < 4; i++) {
		struct goku_ep	*ep = &dev->ep[i];

		ep->num = i;
		ep->ep.name = names[i];
		ep->reg_fifo = &dev->regs->ep_fifo [i];
		ep->reg_status = &dev->regs->ep_status [i];
		ep->reg_mode = &dev->regs->ep_mode[i];

		ep->ep.ops = &goku_ep_ops;
		FUNC2 (&ep->ep.ep_list, &dev->gadget.ep_list);
		ep->dev = dev;
		FUNC0 (&ep->queue);

		FUNC1(NULL, ep);
	}

	dev->ep[0].reg_mode = NULL;
	dev->ep[0].ep.maxpacket = MAX_EP0_SIZE;
	FUNC3 (&dev->ep[0].ep.ep_list);
}