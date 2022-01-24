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
struct TYPE_6__ {int name; } ;
struct usb_gadget_driver {scalar_t__ speed; int (* bind ) (TYPE_1__*) ;TYPE_3__ driver; int /*<<< orphan*/  setup; } ;
struct TYPE_5__ {TYPE_3__* driver; } ;
struct TYPE_4__ {TYPE_2__ dev; } ;
struct at91_udc {int enabled; int selfpowered; TYPE_1__ gadget; struct usb_gadget_driver* driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ USB_SPEED_FULL ; 
 struct at91_udc controller ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct at91_udc*,int) ; 
 int FUNC5 (TYPE_1__*) ; 

int FUNC6 (struct usb_gadget_driver *driver)
{
	struct at91_udc	*udc = &controller;
	int		retval;

	if (!driver
			|| driver->speed < USB_SPEED_FULL
			|| !driver->bind
			|| !driver->setup) {
		FUNC0("bad parameter.\n");
		return -EINVAL;
	}

	if (udc->driver) {
		FUNC0("UDC already has a gadget driver\n");
		return -EBUSY;
	}

	udc->driver = driver;
	udc->gadget.dev.driver = &driver->driver;
	FUNC1(&udc->gadget.dev, &driver->driver);
	udc->enabled = 1;
	udc->selfpowered = 1;

	retval = driver->bind(&udc->gadget);
	if (retval) {
		FUNC0("driver->bind() returned %d\n", retval);
		udc->driver = NULL;
		udc->gadget.dev.driver = NULL;
		FUNC1(&udc->gadget.dev, NULL);
		udc->enabled = 0;
		udc->selfpowered = 0;
		return retval;
	}

	FUNC2();
	FUNC4(udc, 1);
	FUNC3();

	FUNC0("bound to %s\n", driver->driver.name);
	return 0;
}