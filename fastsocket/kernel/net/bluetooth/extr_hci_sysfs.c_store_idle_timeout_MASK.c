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
struct hci_dev {int idle_timeout; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int __u32 ;

/* Variables and functions */
 size_t EINVAL ; 
 struct hci_dev* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,char**,int) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct hci_dev *hdev = FUNC0(dev);
	char *ptr;
	__u32 val;

	val = FUNC1(buf, &ptr, 10);
	if (ptr == buf)
		return -EINVAL;

	if (val != 0 && (val < 500 || val > 3600000))
		return -EINVAL;

	hdev->idle_timeout = val;

	return count;
}