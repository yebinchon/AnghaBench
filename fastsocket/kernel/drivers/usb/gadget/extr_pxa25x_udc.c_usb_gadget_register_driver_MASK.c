#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct usb_gadget_driver {scalar_t__ speed; int (* bind ) (TYPE_2__*) ;int /*<<< orphan*/  (* unbind ) (TYPE_2__*) ;TYPE_1__ driver; int /*<<< orphan*/  setup; int /*<<< orphan*/  disconnect; } ;
struct TYPE_9__ {TYPE_1__* driver; } ;
struct TYPE_8__ {TYPE_5__ dev; } ;
struct pxa25x_udc {int pullup; TYPE_2__ gadget; scalar_t__ transceiver; struct usb_gadget_driver* driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ USB_SPEED_FULL ; 
 int FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa25x_udc*) ; 
 int FUNC4 (scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct pxa25x_udc*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 struct pxa25x_udc* the_controller ; 

int FUNC8(struct usb_gadget_driver *driver)
{
	struct pxa25x_udc	*dev = the_controller;
	int			retval;

	if (!driver
			|| driver->speed < USB_SPEED_FULL
			|| !driver->bind
			|| !driver->disconnect
			|| !driver->setup)
		return -EINVAL;
	if (!dev)
		return -ENODEV;
	if (dev->driver)
		return -EBUSY;

	/* first hook up the driver ... */
	dev->driver = driver;
	dev->gadget.dev.driver = &driver->driver;
	dev->pullup = 1;

	retval = FUNC1 (&dev->gadget.dev);
	if (retval) {
fail:
		dev->driver = NULL;
		dev->gadget.dev.driver = NULL;
		return retval;
	}
	retval = driver->bind(&dev->gadget);
	if (retval) {
		FUNC0("bind to driver %s --> error %d\n",
				driver->driver.name, retval);
		FUNC2 (&dev->gadget.dev);
		goto fail;
	}

	/* ... then enable host detection and ep0; and we're ready
	 * for set_configuration as well as eventual disconnect.
	 */
	FUNC0("registered gadget driver '%s'\n", driver->driver.name);

	/* connect to bus through transceiver */
	if (dev->transceiver) {
		retval = FUNC4(dev->transceiver, &dev->gadget);
		if (retval) {
			FUNC0("can't bind to transceiver\n");
			if (driver->unbind)
				driver->unbind(&dev->gadget);
			goto bind_fail;
		}
	}

	FUNC5(dev);
	FUNC3(dev);
	return 0;
bind_fail:
	return retval;
}