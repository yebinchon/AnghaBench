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
struct iio_dev_attr {int /*<<< orphan*/  address; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  int s8 ;

/* Variables and functions */
 int FUNC0 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*,char*,int) ; 
 struct iio_dev_attr* FUNC2 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				     struct device_attribute *attr,
				     char *buf)
{
	int ret;
	s8 val;
	struct iio_dev_attr *this_attr = FUNC2(attr);

	ret = FUNC0(dev, this_attr->address, (u8 *)&val);

	return ret ? ret : FUNC1(buf, "%d\n", val);
}