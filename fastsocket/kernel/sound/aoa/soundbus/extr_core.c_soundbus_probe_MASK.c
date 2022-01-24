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
struct soundbus_driver {int (* probe ) (struct soundbus_dev*) ;} ;
struct soundbus_dev {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct soundbus_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct soundbus_dev*) ; 
 int FUNC2 (struct soundbus_dev*) ; 
 struct soundbus_dev* FUNC3 (struct device*) ; 
 struct soundbus_driver* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	int error = -ENODEV;
	struct soundbus_driver *drv;
	struct soundbus_dev *soundbus_dev;

	drv = FUNC4(dev->driver);
	soundbus_dev = FUNC3(dev);

	if (!drv->probe)
		return error;

	FUNC0(soundbus_dev);

	error = drv->probe(soundbus_dev);
	if (error)
		FUNC1(soundbus_dev);

	return error;
}