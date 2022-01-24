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
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ INDIO_RING_TRIGGERED ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct device_attribute*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct device_attribute*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				    struct device_attribute *attr,
				    char *buf)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	ssize_t ret;

	/* Take the iio_dev status lock */
	FUNC3(&indio_dev->mlock);
	if (indio_dev->currentmode == INDIO_RING_TRIGGERED)
		ret = FUNC2(dev, attr, buf);
	else
		ret =  FUNC1(dev, attr, buf);
	FUNC4(&indio_dev->mlock);

	return ret;
}