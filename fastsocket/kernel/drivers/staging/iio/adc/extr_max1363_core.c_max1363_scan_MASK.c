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
struct iio_dev {scalar_t__ currentmode; int /*<<< orphan*/  mlock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ INDIO_RING_TRIGGERED ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 int FUNC1 (struct device*,struct device_attribute*,char*) ; 
 int FUNC2 (struct device*,struct device_attribute*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			    struct device_attribute *attr,
			    char *buf)
{
	struct iio_dev *dev_info = FUNC0(dev);
	int ret;

	FUNC3(&dev_info->mlock);
	if (dev_info->currentmode == INDIO_RING_TRIGGERED)
		ret = FUNC2(dev, attr, buf);
	else
		ret = FUNC1(dev, attr, buf);
	FUNC4(&dev_info->mlock);

	return ret;
}