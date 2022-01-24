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
struct sca3000_state {int /*<<< orphan*/  lock; scalar_t__ mo_det_use_count; } ;
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
 int FUNC6 (struct sca3000_state*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct sca3000_state*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (char const*,int,long*) ; 
 struct iio_event_attr* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
				  struct device_attribute *attr,
				  const char *buf,
				  size_t len)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct sca3000_state *st = indio_dev->dev_data;
	struct iio_event_attr *this_attr = FUNC9(attr);
	long val;
	int ret;
	u8 *rx;
	u8 protect_mask = 0x03;
	ret = FUNC8(buf, 10, &val);
	if (ret)
		return ret;

	FUNC2(&st->lock);
	/* First read the motion detector config to find out if
	 * this axis is on*/
	ret = FUNC4(st,
				    SCA3000_REG_CTRL_SEL_MD_CTRL,
				    &rx);
	if (ret)
		goto exit_point;
	/* Off and should be on */
	if (val && !(rx[1] & this_attr->mask)) {
		ret = FUNC6(st,
					     SCA3000_REG_CTRL_SEL_MD_CTRL,
					     rx[1] | this_attr->mask);
		if (ret)
			goto exit_point_free_rx;
		st->mo_det_use_count++;
	} else if (!val && (rx[1]&this_attr->mask)) {
		ret = FUNC6(st,
					     SCA3000_REG_CTRL_SEL_MD_CTRL,
					     rx[1] & ~(this_attr->mask));
		if (ret)
			goto exit_point_free_rx;
		st->mo_det_use_count--;
	} else /* relies on clean state for device on boot */
		goto exit_point_free_rx;
	FUNC1(rx);
	/* read current value of mode register */
	ret = FUNC5(st, SCA3000_REG_ADDR_MODE, &rx, 1);
	if (ret)
		goto exit_point;
	/*if off and should be on*/
	if ((st->mo_det_use_count)
	    && ((rx[1]&protect_mask) != SCA3000_MEAS_MODE_MOT_DET))
		ret = FUNC7(st, SCA3000_REG_ADDR_MODE,
					(rx[1] & ~protect_mask)
					| SCA3000_MEAS_MODE_MOT_DET);
	/* if on and should be off */
	else if (!(st->mo_det_use_count)
		 && ((rx[1]&protect_mask) == SCA3000_MEAS_MODE_MOT_DET))
		ret = FUNC7(st, SCA3000_REG_ADDR_MODE,
					(rx[1] & ~protect_mask));
exit_point_free_rx:
	FUNC1(rx);
exit_point:
	FUNC3(&st->lock);

	return ret ? ret : len;
}