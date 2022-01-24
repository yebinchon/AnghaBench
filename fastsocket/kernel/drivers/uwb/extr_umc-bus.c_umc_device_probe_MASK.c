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
struct umc_driver {int (* probe ) (struct umc_dev*) ;} ;
struct umc_dev {int dummy; } ;
struct device {int /*<<< orphan*/  parent; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int FUNC2 (struct umc_dev*) ; 
 struct umc_dev* FUNC3 (struct device*) ; 
 struct umc_driver* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct umc_dev *umc;
	struct umc_driver *umc_driver;
	int err;

	umc_driver = FUNC4(dev->driver);
	umc = FUNC3(dev);

	FUNC0(dev);
	err = umc_driver->probe(umc);
	if (err)
		FUNC1(dev);
	else
		FUNC5(dev->parent);

	return err;
}