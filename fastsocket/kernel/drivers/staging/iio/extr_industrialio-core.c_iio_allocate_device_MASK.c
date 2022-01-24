#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * class; int /*<<< orphan*/ * type; } ;
struct iio_dev {int /*<<< orphan*/  mlock; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  iio_class ; 
 int /*<<< orphan*/  iio_dev_type ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct iio_dev* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct iio_dev *FUNC5(void)
{
	struct iio_dev *dev = FUNC3(sizeof *dev, GFP_KERNEL);

	if (dev) {
		dev->dev.type = &iio_dev_type;
		dev->dev.class = &iio_class;
		FUNC1(&dev->dev);
		FUNC0(&dev->dev, (void *)dev);
		FUNC4(&dev->mlock);
		FUNC2();
	}

	return dev;
}