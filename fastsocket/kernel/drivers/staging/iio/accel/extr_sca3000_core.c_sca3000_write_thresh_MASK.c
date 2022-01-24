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
struct sca3000_state {int /*<<< orphan*/  lock; } ;
struct iio_dev_attr {int /*<<< orphan*/  address; } ;
struct iio_dev {struct sca3000_state* dev_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct iio_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sca3000_state*,int /*<<< orphan*/ ,long) ; 
 int FUNC4 (char const*,int,long*) ; 
 struct iio_dev_attr* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				    struct device_attribute *attr,
				    const char *buf,
				    size_t len)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct sca3000_state *st = indio_dev->dev_data;
	struct iio_dev_attr *this_attr = FUNC5(attr);
	int ret;
	long val;

	ret = FUNC4(buf, 10, &val);
	if (ret)
		return ret;
	FUNC1(&st->lock);
	ret = FUNC3(st, this_attr->address, val);
	FUNC2(&st->lock);

	return ret ? ret : len;
}