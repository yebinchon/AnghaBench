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
struct usb_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (char const*,char*,unsigned int*) ; 
 struct usb_device* FUNC1 (struct device*) ; 
 int FUNC2 (struct usb_device*) ; 
 int FUNC3 (struct usb_device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
					struct device_attribute *attr,
					const char *buf, size_t size)
{
	ssize_t result;
	struct usb_device *usb_dev = FUNC1(dev);
	unsigned val;
	result = FUNC0(buf, "%u\n", &val);
	if (result != 1)
		result = -EINVAL;
	else if (val == 0)
		result = FUNC3(usb_dev);
	else
		result = FUNC2(usb_dev);
	return result < 0? result : size;
}