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
struct max1363_state {struct max1363_mode const* current_mode; int /*<<< orphan*/  chip_info; } ;
struct max1363_mode {int dummy; } ;
struct iio_dev {int /*<<< orphan*/  mlock; struct max1363_state* dev_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 struct max1363_mode* FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 struct iio_dev* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 int FUNC3 (struct max1363_state*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				       struct device_attribute *attr,
				       const char *buf,
				       size_t len)
{
	struct iio_dev *dev_info = FUNC1(dev);
	struct max1363_state *st = dev_info->dev_data;
	const struct max1363_mode *new_mode;
	int ret;

	FUNC4(&dev_info->mlock);
	new_mode = NULL;
	/* Avoid state changes if a ring buffer is enabled */
	if (!FUNC2(dev_info)) {
		new_mode
			= FUNC0(st->chip_info, buf);
		if (!new_mode) {
			ret = -EINVAL;
			goto error_ret;
		}
		st->current_mode = new_mode;
		ret =  FUNC3(st);
		if (ret)
			goto error_ret;
	} else {
		ret = -EBUSY;
		goto error_ret;
	}
	FUNC5(&dev_info->mlock);

	return len;

error_ret:
	FUNC5(&dev_info->mlock);

	return ret;
}