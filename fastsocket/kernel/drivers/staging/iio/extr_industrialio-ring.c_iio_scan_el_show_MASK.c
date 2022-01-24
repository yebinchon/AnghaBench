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
struct iio_scan_el {int /*<<< orphan*/  number; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct iio_dev* FUNC0 (struct device*) ; 
 int FUNC1 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,char*,int) ; 
 struct iio_scan_el* FUNC3 (struct device_attribute*) ; 

ssize_t FUNC4(struct device *dev,
			 struct device_attribute *attr,
			 char *buf)
{
	int ret;
	struct iio_dev *indio_dev = FUNC0(dev);
	struct iio_scan_el *this_el = FUNC3(attr);

	ret = FUNC1(indio_dev, this_el->number);
	if (ret < 0)
		return ret;
	return FUNC2(buf, "%d\n", ret);
}