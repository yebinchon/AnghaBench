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
struct umc_driver {int /*<<< orphan*/  (* remove ) (struct umc_dev*) ;} ;
struct umc_dev {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct umc_dev*) ; 
 struct umc_dev* FUNC2 (struct device*) ; 
 struct umc_driver* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct umc_dev *umc;
	struct umc_driver *umc_driver;

	umc_driver = FUNC3(dev->driver);
	umc = FUNC2(dev);

	umc_driver->remove(umc);
	FUNC0(dev);
	return 0;
}