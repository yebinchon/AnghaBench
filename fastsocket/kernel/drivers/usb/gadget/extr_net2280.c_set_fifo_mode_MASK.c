#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  ep_list; } ;
struct net2280 {TYPE_4__ gadget; TYPE_3__* ep; TYPE_1__* regs; } ;
struct TYPE_6__ {int /*<<< orphan*/  ep_list; } ;
struct TYPE_7__ {int fifo_size; TYPE_2__ ep; } ;
struct TYPE_5__ {int /*<<< orphan*/  fifoctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int PCI_BASE2_RANGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3 (struct net2280 *dev, int mode)
{
	/* keeping high bits preserves BAR2 */
	FUNC2 ((0xffff << PCI_BASE2_RANGE) | mode, &dev->regs->fifoctl);

	/* always ep-{a,b,e,f} ... maybe not ep-c or ep-d */
	FUNC0 (&dev->gadget.ep_list);
	FUNC1 (&dev->ep [1].ep.ep_list, &dev->gadget.ep_list);
	FUNC1 (&dev->ep [2].ep.ep_list, &dev->gadget.ep_list);
	switch (mode) {
	case 0:
		FUNC1 (&dev->ep [3].ep.ep_list, &dev->gadget.ep_list);
		FUNC1 (&dev->ep [4].ep.ep_list, &dev->gadget.ep_list);
		dev->ep [1].fifo_size = dev->ep [2].fifo_size = 1024;
		break;
	case 1:
		dev->ep [1].fifo_size = dev->ep [2].fifo_size = 2048;
		break;
	case 2:
		FUNC1 (&dev->ep [3].ep.ep_list, &dev->gadget.ep_list);
		dev->ep [1].fifo_size = 2048;
		dev->ep [2].fifo_size = 1024;
		break;
	}
	/* fifo sizes for ep0, ep-c, ep-d, ep-e, and ep-f never change */
	FUNC1 (&dev->ep [5].ep.ep_list, &dev->gadget.ep_list);
	FUNC1 (&dev->ep [6].ep.ep_list, &dev->gadget.ep_list);
}