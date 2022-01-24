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
 int SCA3000_MEAS_MODE_MOT_DET ; 
 int /*<<< orphan*/  SCA3000_REG_ADDR_MODE ; 
 int /*<<< orphan*/  SCA3000_REG_CTRL_SEL_MD_CTRL ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sca3000_state*,int /*<<< orphan*/ ,int**) ; 
 int FUNC5 (struct sca3000_state*,int /*<<< orphan*/ ,int**,int) ; 
 scalar_t__ FUNC6 (char*,char*,...) ; 
 struct iio_event_attr* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				    struct device_attribute *attr,
				    char *buf)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct sca3000_state *st = indio_dev->dev_data;
	struct iio_event_attr *this_attr = FUNC7(attr);
	int ret, len = 0;
	u8 *rx;
	u8 protect_mask = 0x03;

	/* read current value of mode register */
	FUNC2(&st->lock);
	ret = FUNC5(st, SCA3000_REG_ADDR_MODE, &rx, 1);
	if (ret)
		goto error_ret;

	if ((rx[1]&protect_mask) != SCA3000_MEAS_MODE_MOT_DET)
		len += FUNC6(buf + len, "0\n");
	else {
		FUNC1(rx);
		ret = FUNC4(st,
					    SCA3000_REG_CTRL_SEL_MD_CTRL,
					    &rx);
		if (ret)
			goto error_ret;
		/* only supporting logical or's for now */
		len += FUNC6(buf + len, "%d\n",
			       (rx[1] & this_attr->mask) ? 1 : 0);
	}
	FUNC1(rx);
error_ret:
	FUNC3(&st->lock);

	return ret ? ret : len;
}