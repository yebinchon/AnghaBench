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
struct usb_sevsegdev {int* decimals; } ;
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC1 (char const*,size_t) ; 
 struct usb_interface* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_sevsegdev*,int /*<<< orphan*/ ) ; 
 struct usb_sevsegdev* FUNC4 (struct usb_interface*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
	struct device_attribute *attr, const char *buf, size_t count)
{
	struct usb_interface *intf = FUNC2(dev);
	struct usb_sevsegdev *mydev = FUNC4(intf);
	size_t end = FUNC1(buf, count);
	int i;

	if (end > sizeof(mydev->decimals))
		return -EINVAL;

	for (i = 0; i < end; i++)
		if (buf[i] != '0' && buf[i] != '1')
			return -EINVAL;

	FUNC0(mydev->decimals, 0, sizeof(mydev->decimals));
	for (i = 0; i < end; i++)
		if (buf[i] == '1')
			mydev->decimals[end-1-i] = 1;

	FUNC3(mydev, GFP_KERNEL);

	return count;
}