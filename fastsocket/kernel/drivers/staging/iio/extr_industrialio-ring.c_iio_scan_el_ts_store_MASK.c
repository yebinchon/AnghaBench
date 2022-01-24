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
struct iio_dev {scalar_t__ currentmode; int scan_timestamp; int /*<<< orphan*/  mlock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ INDIO_RING_TRIGGERED ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

ssize_t FUNC3(struct device *dev,
			     struct device_attribute *attr,
			     const char *buf,
			     size_t len)
{
	int ret = 0;
	struct iio_dev *indio_dev = FUNC0(dev);
	bool state;
	state = !(buf[0] == '0');
	FUNC1(&indio_dev->mlock);
	if (indio_dev->currentmode == INDIO_RING_TRIGGERED) {
		ret = -EBUSY;
		goto error_ret;
	}
	indio_dev->scan_timestamp = state;
error_ret:
	FUNC2(&indio_dev->mlock);

	return ret ? ret : len;
}