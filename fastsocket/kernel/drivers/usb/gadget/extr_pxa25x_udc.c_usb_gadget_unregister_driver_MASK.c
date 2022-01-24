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
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct usb_gadget_driver {TYPE_1__ driver; int /*<<< orphan*/  (* unbind ) (TYPE_2__*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/ * driver; } ;
struct TYPE_5__ {TYPE_3__ dev; } ;
struct pxa25x_udc {TYPE_2__ gadget; struct usb_gadget_driver* driver; scalar_t__ transceiver; scalar_t__ pullup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa25x_udc*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pxa25x_udc*) ; 
 int /*<<< orphan*/  FUNC7 (struct pxa25x_udc*,struct usb_gadget_driver*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 struct pxa25x_udc* the_controller ; 

int FUNC9(struct usb_gadget_driver *driver)
{
	struct pxa25x_udc	*dev = the_controller;

	if (!dev)
		return -ENODEV;
	if (!driver || driver != dev->driver || !driver->unbind)
		return -EINVAL;

	FUNC3();
	dev->pullup = 0;
	FUNC6(dev);
	FUNC7(dev, driver);
	FUNC4();

	if (dev->transceiver)
		(void) FUNC5(dev->transceiver, NULL);

	driver->unbind(&dev->gadget);
	dev->gadget.dev.driver = NULL;
	dev->driver = NULL;

	FUNC1 (&dev->gadget.dev);

	FUNC0("unregistered gadget driver '%s'\n", driver->driver.name);
	FUNC2(dev);
	return 0;
}