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
struct iio_dev {struct sca3000_state* dev_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  SCA3000_REG_ADDR_REVID ; 
 int SCA3000_REVID_MAJOR_MASK ; 
 int SCA3000_REVID_MINOR_MASK ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sca3000_state*,int /*<<< orphan*/ ,int**,int) ; 
 scalar_t__ FUNC5 (char*,char*,int,int) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				struct device_attribute *attr,
				char *buf)
{
	int len = 0, ret;
	struct iio_dev *dev_info = FUNC0(dev);
	struct sca3000_state *st = dev_info->dev_data;

	u8 *rx;

	FUNC2(&st->lock);
	ret = FUNC4(st, SCA3000_REG_ADDR_REVID, &rx, 1);
	if (ret < 0)
		goto error_ret;
	len += FUNC5(buf + len,
		       "major=%d, minor=%d\n",
		       rx[1] & SCA3000_REVID_MAJOR_MASK,
		       rx[1] & SCA3000_REVID_MINOR_MASK);
	FUNC1(rx);

error_ret:
	FUNC3(&st->lock);

	return ret ? ret : len;
}