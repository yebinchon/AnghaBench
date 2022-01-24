#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sca3000_state {TYPE_1__* info; int /*<<< orphan*/  lock; } ;
struct iio_dev {struct sca3000_state* dev_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int measurement_mode_freq; int option_mode_1_freq; int option_mode_2_freq; } ;

/* Variables and functions */
#define  SCA3000_MEAS_MODE_NORMAL 130 
#define  SCA3000_MEAS_MODE_OP_1 129 
#define  SCA3000_MEAS_MODE_OP_2 128 
 int /*<<< orphan*/  SCA3000_REG_ADDR_MODE ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sca3000_state*,int /*<<< orphan*/ ,int**,int) ; 
 int FUNC5 (char*,char*,int,int,int) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			     struct device_attribute *attr,
			     char *buf)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct sca3000_state *st = indio_dev->dev_data;
	int len = 0, ret;
	u8 *rx;
	FUNC2(&st->lock);
	ret = FUNC4(st, SCA3000_REG_ADDR_MODE, &rx, 1);
	FUNC3(&st->lock);
	if (ret)
		goto error_ret;
	rx[1] &= 0x03;
	switch (rx[1]) {
	case SCA3000_MEAS_MODE_NORMAL:
		len += FUNC5(buf + len, "%d %d %d\n",
			       st->info->measurement_mode_freq,
			       st->info->measurement_mode_freq/2,
			       st->info->measurement_mode_freq/4);
		break;
	case SCA3000_MEAS_MODE_OP_1:
		len += FUNC5(buf + len, "%d %d %d\n",
			       st->info->option_mode_1_freq,
			       st->info->option_mode_1_freq/2,
			       st->info->option_mode_1_freq/4);
		break;
	case SCA3000_MEAS_MODE_OP_2:
		len += FUNC5(buf + len, "%d %d %d\n",
			       st->info->option_mode_2_freq,
			       st->info->option_mode_2_freq/2,
			       st->info->option_mode_2_freq/4);
		break;
	};
	FUNC1(rx);
	return len;
error_ret:
	return ret;
}