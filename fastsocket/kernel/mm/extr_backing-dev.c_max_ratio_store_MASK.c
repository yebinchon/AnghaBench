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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct backing_dev_info {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t FUNC0 (struct backing_dev_info*,unsigned int) ; 
 struct backing_dev_info* FUNC1 (struct device*) ; 
 unsigned int FUNC2 (char const*,char**,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct backing_dev_info *bdi = FUNC1(dev);
	char *end;
	unsigned int ratio;
	ssize_t ret = -EINVAL;

	ratio = FUNC2(buf, &end, 10);
	if (*buf && (end[0] == '\0' || (end[0] == '\n' && end[1] == '\0'))) {
		ret = FUNC0(bdi, ratio);
		if (!ret)
			ret = count;
	}
	return ret;
}