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
struct iio_trigger {struct iio_prtc_trigger_info* private_data; } ;
struct iio_prtc_trigger_info {unsigned long frequency; int /*<<< orphan*/  task; int /*<<< orphan*/  rtc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 struct iio_trigger* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
					    struct device_attribute *attr,
					    const char *buf,
					    size_t len)
{
	struct iio_trigger *trig = FUNC0(dev);
	struct iio_prtc_trigger_info *trig_info = trig->private_data;
	unsigned long val;
	int ret;

	ret = FUNC2(buf, 10, &val);
	if (ret)
		goto error_ret;

	ret = FUNC1(trig_info->rtc, &trig_info->task, val);
	if (ret)
		goto error_ret;

	trig_info->frequency = val;

	return len;

error_ret:
	return ret;
}