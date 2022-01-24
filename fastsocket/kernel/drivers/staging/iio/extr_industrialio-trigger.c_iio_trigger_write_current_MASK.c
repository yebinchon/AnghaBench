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
struct iio_trigger {int dummy; } ;
struct iio_dev {scalar_t__ currentmode; struct iio_trigger* trig; int /*<<< orphan*/  mlock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EBUSY ; 
 size_t IIO_TRIGGER_NAME_LENGTH ; 
 scalar_t__ INDIO_RING_TRIGGERED ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_trigger*) ; 
 struct iio_trigger* FUNC3 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
					 struct device_attribute *attr,
					 const char *buf,
					 size_t len)
{
	struct iio_dev *dev_info = FUNC0(dev);
	struct iio_trigger *oldtrig = dev_info->trig;
	FUNC4(&dev_info->mlock);
	if (dev_info->currentmode == INDIO_RING_TRIGGERED) {
		FUNC5(&dev_info->mlock);
		return -EBUSY;
	}
	FUNC5(&dev_info->mlock);

	len = len < IIO_TRIGGER_NAME_LENGTH ? len : IIO_TRIGGER_NAME_LENGTH;

	dev_info->trig = FUNC3(buf, len);
	if (oldtrig && dev_info->trig != oldtrig)
		FUNC2(oldtrig);
	if (dev_info->trig)
		FUNC1(dev_info->trig);

	return len;
}