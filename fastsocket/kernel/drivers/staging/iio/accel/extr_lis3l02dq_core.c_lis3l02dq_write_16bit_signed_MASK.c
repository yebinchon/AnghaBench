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
struct iio_dev_attr {int /*<<< orphan*/  address; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct device*,int /*<<< orphan*/ ,long) ; 
 int FUNC1 (char const*,int,long*) ; 
 struct iio_dev_attr* FUNC2 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
					    struct device_attribute *attr,
					    const char *buf,
					    size_t len)
{
	struct iio_dev_attr *this_attr = FUNC2(attr);
	int ret;
	long val;

	ret = FUNC1(buf, 10, &val);
	if (ret)
		goto error_ret;
	ret = FUNC0(dev, this_attr->address, val);

error_ret:
	return ret ? ret : len;
}