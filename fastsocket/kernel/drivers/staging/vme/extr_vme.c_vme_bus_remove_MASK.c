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
struct vme_driver {int (* remove ) (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct vme_bridge {int /*<<< orphan*/  num; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 struct vme_bridge* FUNC0 (struct device*) ; 
 struct vme_driver* FUNC1 (struct device*) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct vme_bridge *bridge;
	struct vme_driver *driver;
	int retval = -ENODEV;

	driver = FUNC1(dev);
	bridge = FUNC0(dev);

	if(driver->remove != NULL) {
		retval = driver->remove(dev, bridge->num, FUNC3(dev));
	}

	return retval;
}