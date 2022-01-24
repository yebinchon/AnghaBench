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
struct iio_dev_attr {int /*<<< orphan*/  address; } ;
struct iio_dev {struct sca3000_state* dev_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct iio_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sca3000_state*,int /*<<< orphan*/ ,int**) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 struct iio_dev_attr* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				   struct device_attribute *attr,
				   char *buf)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct sca3000_state *st = indio_dev->dev_data;
	struct iio_dev_attr *this_attr = FUNC6(attr);
	int len = 0, ret;
	u8 *rx;

	FUNC2(&st->lock);
	ret = FUNC4(st,
				    this_attr->address,
				    &rx);
	FUNC3(&st->lock);
	if (ret)
		return ret;
	len += FUNC5(buf + len, "%d\n", rx[1]);
	FUNC1(rx);

	return len;
}