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
struct pxa_udc {TYPE_2__ gadget; struct usb_gadget_driver* driver; int /*<<< orphan*/  dev; scalar_t__ transceiver; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ USB_SPEED_FULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa_udc*,int) ; 
 int FUNC5 (scalar_t__,TYPE_2__*) ; 
 scalar_t__ FUNC6 (struct pxa_udc*) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 struct pxa_udc* the_controller ; 
 int /*<<< orphan*/  FUNC9 (struct pxa_udc*) ; 

int FUNC10(struct usb_gadget_driver *driver)
{
	struct pxa_udc *udc = the_controller;
	int retval;

	if (!driver || driver->speed < USB_SPEED_FULL || !driver->bind
			|| !driver->disconnect || !driver->setup)
		return -EINVAL;
	if (!udc)
		return -ENODEV;
	if (udc->driver)
		return -EBUSY;

	/* first hook up the driver ... */
	udc->driver = driver;
	udc->gadget.dev.driver = &driver->driver;
	FUNC4(udc, 1);

	retval = FUNC2(&udc->gadget.dev);
	if (retval) {
		FUNC1(udc->dev, "device_add error %d\n", retval);
		goto add_fail;
	}
	retval = driver->bind(&udc->gadget);
	if (retval) {
		FUNC1(udc->dev, "bind to driver %s --> error %d\n",
			driver->driver.name, retval);
		goto bind_fail;
	}
	FUNC0(udc->dev, "registered gadget driver '%s'\n",
		driver->driver.name);

	if (udc->transceiver) {
		retval = FUNC5(udc->transceiver, &udc->gadget);
		if (retval) {
			FUNC1(udc->dev, "can't bind to transceiver\n");
			goto transceiver_fail;
		}
	}

	if (FUNC6(udc))
		FUNC9(udc);
	return 0;

transceiver_fail:
	if (driver->unbind)
		driver->unbind(&udc->gadget);
bind_fail:
	FUNC3(&udc->gadget.dev);
add_fail:
	udc->driver = NULL;
	udc->gadget.dev.driver = NULL;
	return retval;
}