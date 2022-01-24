#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct xenbus_driver {int /*<<< orphan*/  (* is_ready ) (struct xenbus_device*) ;} ;
struct xenbus_device {scalar_t__ state; } ;
struct device_driver {int dummy; } ;
struct device {struct device_driver* driver; } ;

/* Variables and functions */
 scalar_t__ XenbusStateConnected ; 
 int /*<<< orphan*/  FUNC0 (struct xenbus_device*) ; 
 struct xenbus_device* FUNC1 (struct device*) ; 
 struct xenbus_driver* FUNC2 (struct device_driver*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, void *data)
{
	struct xenbus_device *xendev = FUNC1(dev);
	struct device_driver *drv = data;
	struct xenbus_driver *xendrv;

	/*
	 * A device with no driver will never connect. We care only about
	 * devices which should currently be in the process of connecting.
	 */
	if (!dev->driver)
		return 0;

	/* Is this search limited to a particular driver? */
	if (drv && (dev->driver != drv))
		return 0;

	xendrv = FUNC2(dev->driver);
	return (xendev->state < XenbusStateConnected ||
		(xendev->state == XenbusStateConnected &&
		 xendrv->is_ready && !xendrv->is_ready(xendev)));
}