#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  name; int /*<<< orphan*/ * bus; } ;
struct usb_gadget_driver {int (* bind ) (TYPE_5__*) ;scalar_t__ speed; TYPE_3__ driver; int /*<<< orphan*/  setup; } ;
struct TYPE_6__ {int maxpacket; int /*<<< orphan*/  ep_list; int /*<<< orphan*/ * ops; scalar_t__ name; } ;
struct dummy_ep {TYPE_1__ ep; int /*<<< orphan*/  queue; int /*<<< orphan*/ * desc; TYPE_5__* gadget; int /*<<< orphan*/  last_io; scalar_t__ setup_stage; scalar_t__ already_seen; scalar_t__ wedged; scalar_t__ halted; } ;
struct TYPE_9__ {TYPE_3__* driver; } ;
struct TYPE_10__ {TYPE_4__ dev; TYPE_1__* ep0; int /*<<< orphan*/  ep_list; } ;
struct TYPE_7__ {int /*<<< orphan*/  queue; } ;
struct dummy {int pullup; int /*<<< orphan*/  lock; TYPE_5__ gadget; struct usb_gadget_driver* driver; TYPE_2__ fifo_req; struct dummy_ep* ep; scalar_t__ devstatus; } ;

/* Variables and functions */
 int DUMMY_ENDPOINTS ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dummy_ep_ops ; 
 int /*<<< orphan*/  FUNC2 (struct dummy*) ; 
 scalar_t__* ep_name ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dummy*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_5__*) ; 
 struct dummy* the_controller ; 
 int /*<<< orphan*/  FUNC9 (struct dummy*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int
FUNC11 (struct usb_gadget_driver *driver)
{
	struct dummy	*dum = the_controller;
	int		retval, i;

	if (!dum)
		return -EINVAL;
	if (dum->driver)
		return -EBUSY;
	if (!driver->bind || !driver->setup
			|| driver->speed == USB_SPEED_UNKNOWN)
		return -EINVAL;

	/*
	 * SLAVE side init ... the layer above hardware, which
	 * can't enumerate without help from the driver we're binding.
	 */

	dum->devstatus = 0;

	FUNC0 (&dum->gadget.ep_list);
	for (i = 0; i < DUMMY_ENDPOINTS; i++) {
		struct dummy_ep	*ep = &dum->ep [i];

		if (!ep_name [i])
			break;
		ep->ep.name = ep_name [i];
		ep->ep.ops = &dummy_ep_ops;
		FUNC3 (&ep->ep.ep_list, &dum->gadget.ep_list);
		ep->halted = ep->wedged = ep->already_seen =
				ep->setup_stage = 0;
		ep->ep.maxpacket = ~0;
		ep->last_io = jiffies;
		ep->gadget = &dum->gadget;
		ep->desc = NULL;
		FUNC0 (&ep->queue);
	}

	dum->gadget.ep0 = &dum->ep [0].ep;
	dum->ep [0].ep.maxpacket = 64;
	FUNC4 (&dum->ep [0].ep.ep_list);
	FUNC0(&dum->fifo_req.queue);

	driver->driver.bus = NULL;
	dum->driver = driver;
	dum->gadget.dev.driver = &driver->driver;
	FUNC1 (FUNC9(dum), "binding gadget driver '%s'\n",
			driver->driver.name);
	retval = driver->bind(&dum->gadget);
	if (retval) {
		dum->driver = NULL;
		dum->gadget.dev.driver = NULL;
		return retval;
	}

	/* khubd will enumerate this in a while */
	FUNC6 (&dum->lock);
	dum->pullup = 1;
	FUNC5 (dum);
	FUNC7 (&dum->lock);

	FUNC10 (FUNC2 (dum));
	return 0;
}