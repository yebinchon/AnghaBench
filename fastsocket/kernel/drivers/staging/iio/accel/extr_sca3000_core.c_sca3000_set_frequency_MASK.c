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
struct sca3000_state {int /*<<< orphan*/  lock; int /*<<< orphan*/  info; } ;
struct iio_dev {struct sca3000_state* dev_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int SCA3000_OUT_CTRL_BUF_DIV_2 ; 
 int SCA3000_OUT_CTRL_BUF_DIV_4 ; 
 int /*<<< orphan*/  SCA3000_REG_CTRL_SEL_OUT_CTRL ; 
 int FUNC0 (struct sca3000_state*,int /*<<< orphan*/ ,int*) ; 
 struct iio_dev* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sca3000_state*,int /*<<< orphan*/ ,int**) ; 
 int FUNC5 (struct sca3000_state*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (char const*,int,long*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			      struct device_attribute *attr,
			      const char *buf,
			      size_t len)
{
	struct iio_dev *indio_dev = FUNC1(dev);
	struct sca3000_state *st = indio_dev->dev_data;
	int ret, base_freq = 0;
	u8 *rx;
	long val;

	ret = FUNC6(buf, 10, &val);
	if (ret)
		return ret;

	FUNC2(&st->lock);
	/* What mode are we in? */
	ret = FUNC0(st, st->info, &base_freq);
	if (ret)
		goto error_free_lock;

	ret = FUNC4(st, SCA3000_REG_CTRL_SEL_OUT_CTRL, &rx);
	if (ret)
		goto error_free_lock;
	/* clear the bits */
	rx[1] &= ~0x03;

	if (val == base_freq/2) {
		rx[1] |= SCA3000_OUT_CTRL_BUF_DIV_2;
	} else if (val == base_freq/4) {
		rx[1] |= SCA3000_OUT_CTRL_BUF_DIV_4;
	} else if (val != base_freq) {
		ret = -EINVAL;
		goto error_free_lock;
	}
	ret = FUNC5(st, SCA3000_REG_CTRL_SEL_OUT_CTRL, rx[1]);
error_free_lock:
	FUNC3(&st->lock);

	return ret ? ret : len;
}