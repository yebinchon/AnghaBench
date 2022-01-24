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
typedef  int u8 ;
struct sca3000_state {int /*<<< orphan*/  lock; } ;
struct iio_event_attr {int mask; } ;
struct iio_dev {struct sca3000_state* dev_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  SCA3000_REG_ADDR_INT_MASK ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sca3000_state*,int /*<<< orphan*/ ,int**,int) ; 
 int FUNC5 (struct sca3000_state*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (char const*,int,long*) ; 
 struct iio_event_attr* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				      struct device_attribute *attr,
				      const char *buf,
				      size_t len)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct sca3000_state *st = indio_dev->dev_data;
	struct iio_event_attr *this_attr = FUNC7(attr);

	long val;
	int ret;
	u8 *rx;

	FUNC2(&st->lock);
	ret = FUNC6(buf, 10, &val);
	if (ret)
		goto error_ret;
	ret = FUNC4(st, SCA3000_REG_ADDR_INT_MASK, &rx, 1);
	if (ret)
		goto error_ret;
	if (val)
		ret = FUNC5(st,
					SCA3000_REG_ADDR_INT_MASK,
					rx[1] | this_attr->mask);
	else
		ret = FUNC5(st,
					SCA3000_REG_ADDR_INT_MASK,
					rx[1] & ~this_attr->mask);
	FUNC1(rx);
error_ret:
	FUNC3(&st->lock);

	return ret ? ret : len;
}