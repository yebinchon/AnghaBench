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
struct sca3000_state {int bpse; int /*<<< orphan*/  lock; } ;
struct iio_ring_buffer {TYPE_1__* indio_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {struct sca3000_state* dev_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SCA3000_REG_ADDR_MODE ; 
 int SCA3000_RING_BUF_8BIT ; 
 struct iio_ring_buffer* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sca3000_state*,int /*<<< orphan*/ ,int**,int) ; 
 int FUNC4 (struct sca3000_state*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (char const*,int,long*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				      struct device_attribute *attr,
				      const char *buf,
				      size_t len)
{
	struct iio_ring_buffer *r = FUNC0(dev);
	struct sca3000_state *st = r->indio_dev->dev_data;
	int ret;
	u8 *rx;
	long val;
	ret = FUNC5(buf, 10, &val);
	if (ret)
		return ret;

	FUNC1(&st->lock);

	ret = FUNC3(st, SCA3000_REG_ADDR_MODE, &rx, 1);
	if (!ret)
		switch (val) {
		case 8:
			ret = FUNC4(st, SCA3000_REG_ADDR_MODE,
						rx[1] | SCA3000_RING_BUF_8BIT);
			st->bpse = 8;
			break;
		case 11:
			ret = FUNC4(st, SCA3000_REG_ADDR_MODE,
						rx[1] & ~SCA3000_RING_BUF_8BIT);
			st->bpse = 11;
			break;
		default:
			ret = -EINVAL;
			break;
		}
	FUNC2(&st->lock);

	return ret ? ret : len;
}