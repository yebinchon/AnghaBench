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
 int /*<<< orphan*/  SCA3000_REG_CTRL_SEL_OUT_CTRL ; 
 int FUNC0 (struct sca3000_state*,int /*<<< orphan*/ ,int*) ; 
 struct iio_dev* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct sca3000_state*,int /*<<< orphan*/ ,int**) ; 
 int FUNC6 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			       struct device_attribute *attr,
			       char *buf)
{
	struct iio_dev *indio_dev = FUNC1(dev);
	struct sca3000_state *st = indio_dev->dev_data;
	int ret, len = 0, base_freq = 0;
	u8 *rx;
	FUNC3(&st->lock);
	ret = FUNC0(st, st->info, &base_freq);
	if (ret)
		goto error_ret_mut;
	ret = FUNC5(st, SCA3000_REG_CTRL_SEL_OUT_CTRL, &rx);
	FUNC4(&st->lock);
	if (ret)
		goto error_ret;
	if (base_freq > 0)
		switch (rx[1]&0x03) {
		case 0x00:
		case 0x03:
			len = FUNC6(buf, "%d\n", base_freq);
			break;
		case 0x01:
			len = FUNC6(buf, "%d\n", base_freq/2);
			break;
		case 0x02:
			len = FUNC6(buf, "%d\n", base_freq/4);
			break;
	};
			FUNC2(rx);
	return len;
error_ret_mut:
	FUNC4(&st->lock);
error_ret:
	return ret;
}