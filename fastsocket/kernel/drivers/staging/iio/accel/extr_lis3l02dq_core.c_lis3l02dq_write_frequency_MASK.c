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
typedef  int /*<<< orphan*/  u8 ;
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  LIS3L02DQ_DEC_MASK ; 
 int /*<<< orphan*/  LIS3L02DQ_REG_CTRL_1_ADDR ; 
 int /*<<< orphan*/  LIS3L02DQ_REG_CTRL_1_DF_128 ; 
 int /*<<< orphan*/  LIS3L02DQ_REG_CTRL_1_DF_32 ; 
 int /*<<< orphan*/  LIS3L02DQ_REG_CTRL_1_DF_64 ; 
 int /*<<< orphan*/  LIS3L02DQ_REG_CTRL_1_DF_8 ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,int,long*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
					 struct device_attribute *attr,
					 const char *buf,
					 size_t len)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	long val;
	int ret;
	u8 t;

	ret = FUNC5(buf, 10, &val);
	if (ret)
		return ret;

	FUNC3(&indio_dev->mlock);
	ret = FUNC1(dev,
				       LIS3L02DQ_REG_CTRL_1_ADDR,
				       &t);
	if (ret)
		goto error_ret_mutex;
	/* Wipe the bits clean */
	t &= ~LIS3L02DQ_DEC_MASK;
	switch (val) {
	case 280:
		t |= LIS3L02DQ_REG_CTRL_1_DF_128;
		break;
	case 560:
		t |= LIS3L02DQ_REG_CTRL_1_DF_64;
		break;
	case 1120:
		t |= LIS3L02DQ_REG_CTRL_1_DF_32;
		break;
	case 4480:
		t |= LIS3L02DQ_REG_CTRL_1_DF_8;
		break;
	default:
		ret = -EINVAL;
		goto error_ret_mutex;
	};

	ret = FUNC2(dev,
					LIS3L02DQ_REG_CTRL_1_ADDR,
					&t);

error_ret_mutex:
	FUNC4(&indio_dev->mlock);

	return ret ? ret : len;
}