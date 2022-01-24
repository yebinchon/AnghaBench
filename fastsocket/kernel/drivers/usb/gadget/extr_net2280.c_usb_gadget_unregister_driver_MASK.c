#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct usb_gadget_driver {TYPE_3__ driver; int /*<<< orphan*/  (* unbind ) (TYPE_4__*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/ * driver; } ;
struct TYPE_9__ {TYPE_1__ dev; } ;
struct net2280 {TYPE_2__* pdev; struct usb_gadget_driver* driver; TYPE_4__ gadget; int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net2280*,char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  dev_attr_function ; 
 int /*<<< orphan*/  dev_attr_queues ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net2280*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct net2280*,struct usb_gadget_driver*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 struct net2280* the_controller ; 

int FUNC8 (struct usb_gadget_driver *driver)
{
	struct net2280	*dev = the_controller;
	unsigned long	flags;

	if (!dev)
		return -ENODEV;
	if (!driver || driver != dev->driver || !driver->unbind)
		return -EINVAL;

	FUNC4 (&dev->lock, flags);
	FUNC6 (dev, driver);
	FUNC5 (&dev->lock, flags);

	FUNC3 (&dev->gadget, 0);

	driver->unbind (&dev->gadget);
	dev->gadget.dev.driver = NULL;
	dev->driver = NULL;

	FUNC2 (dev, 0);
	FUNC1 (&dev->pdev->dev, &dev_attr_function);
	FUNC1 (&dev->pdev->dev, &dev_attr_queues);

	FUNC0 (dev, "unregistered driver '%s'\n", driver->driver.name);
	return 0;
}