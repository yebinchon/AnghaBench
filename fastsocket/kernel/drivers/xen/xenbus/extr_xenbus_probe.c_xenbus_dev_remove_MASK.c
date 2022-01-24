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
struct xenbus_driver {int /*<<< orphan*/  (* remove ) (struct xenbus_device*) ;} ;
struct xenbus_device {int /*<<< orphan*/  nodename; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XenbusStateClosed ; 
 int /*<<< orphan*/  FUNC1 (struct xenbus_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct xenbus_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct xenbus_device*) ; 
 struct xenbus_device* FUNC4 (struct device*) ; 
 struct xenbus_driver* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xenbus_device*,int /*<<< orphan*/ ) ; 

int FUNC7(struct device *_dev)
{
	struct xenbus_device *dev = FUNC4(_dev);
	struct xenbus_driver *drv = FUNC5(_dev->driver);

	FUNC0("%s", dev->nodename);

	FUNC2(dev);
	FUNC1(dev);

	if (drv->remove)
		drv->remove(dev);

	FUNC6(dev, XenbusStateClosed);
	return 0;
}