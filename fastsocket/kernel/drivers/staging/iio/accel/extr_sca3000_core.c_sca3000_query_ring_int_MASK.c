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
 int FUNC5 (char*,char*,int) ; 
 struct iio_event_attr* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				      struct device_attribute *attr,
				      char *buf)
{
	struct iio_event_attr *this_attr = FUNC6(attr);
	int ret, len;
	u8 *rx;
	struct iio_dev *indio_dev = FUNC0(dev);
	struct sca3000_state *st = indio_dev->dev_data;
	FUNC2(&st->lock);
	ret = FUNC4(st, SCA3000_REG_ADDR_INT_MASK, &rx, 1);
	FUNC3(&st->lock);
	if (ret)
		return ret;
	len = FUNC5(buf, "%d\n", (rx[1] & this_attr->mask) ? 1 : 0);
	FUNC1(rx);

	return len;
}