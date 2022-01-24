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
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct usb_gadget_driver {TYPE_1__ driver; int /*<<< orphan*/  (* unbind ) (TYPE_2__*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct pxa_udc {scalar_t__ transceiver; int /*<<< orphan*/  dev; TYPE_2__ gadget; struct usb_gadget_driver* driver; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa_udc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa_udc*,struct usb_gadget_driver*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 struct pxa_udc* the_controller ; 
 int /*<<< orphan*/  FUNC6 (struct pxa_udc*) ; 

int FUNC7(struct usb_gadget_driver *driver)
{
	struct pxa_udc *udc = the_controller;

	if (!udc)
		return -ENODEV;
	if (!driver || driver != udc->driver || !driver->unbind)
		return -EINVAL;

	FUNC4(udc, driver);
	FUNC6(udc);
	FUNC2(udc, 0);

	driver->unbind(&udc->gadget);
	udc->driver = NULL;

	FUNC1(&udc->gadget.dev);
	FUNC0(udc->dev, "unregistered gadget driver '%s'\n",
		 driver->driver.name);

	if (udc->transceiver)
		return FUNC3(udc->transceiver, NULL);
	return 0;
}