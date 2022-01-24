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
struct lh7a40x_udc {TYPE_2__ gadget; int /*<<< orphan*/  lock; struct usb_gadget_driver* driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct lh7a40x_udc*,struct usb_gadget_driver*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 struct lh7a40x_udc* the_controller ; 
 int /*<<< orphan*/  FUNC6 (struct lh7a40x_udc*) ; 

int FUNC7(struct usb_gadget_driver *driver)
{
	struct lh7a40x_udc *dev = the_controller;
	unsigned long flags;

	if (!dev)
		return -ENODEV;
	if (!driver || driver != dev->driver || !driver->unbind)
		return -EINVAL;

	FUNC2(&dev->lock, flags);
	dev->driver = 0;
	FUNC4(dev, driver);
	FUNC3(&dev->lock, flags);

	driver->unbind(&dev->gadget);
	dev->gadget.dev.driver = NULL;
	FUNC1(&dev->gadget.dev);

	FUNC6(dev);

	FUNC0("unregistered gadget driver '%s'\n", driver->driver.name);
	return 0;
}