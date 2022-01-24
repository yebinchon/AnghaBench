#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* parent; } ;
struct iio_dev {int modes; TYPE_1__ dev; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int INDIO_RING_TRIGGERED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (struct iio_dev*) ; 
 int FUNC5 (struct iio_dev*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_idr ; 

int FUNC10(struct iio_dev *dev_info)
{
	int ret;

	ret = FUNC5(dev_info, &iio_idr);
	if (ret) {
		FUNC0(&dev_info->dev, "Failed to get id\n");
		goto error_ret;
	}
	FUNC1(&dev_info->dev, "device%d", dev_info->id);

	ret = FUNC2(&dev_info->dev);
	if (ret)
		goto error_free_idr;
	ret = FUNC6(dev_info);
	if (ret) {
		FUNC0(dev_info->dev.parent,
			"Failed to register sysfs interfaces\n");
		goto error_del_device;
	}
	ret = FUNC4(dev_info);
	if (ret) {
		FUNC0(dev_info->dev.parent,
			"Failed to register event set \n");
		goto error_free_sysfs;
	}
	if (dev_info->modes & INDIO_RING_TRIGGERED)
		FUNC7(dev_info);

	return 0;

error_free_sysfs:
	FUNC9(dev_info);
error_del_device:
	FUNC3(&dev_info->dev);
error_free_idr:
	FUNC8(dev_info);
error_ret:
	return ret;
}