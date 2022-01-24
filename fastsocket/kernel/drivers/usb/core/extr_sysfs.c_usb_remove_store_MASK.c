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
struct usb_device {scalar_t__ state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ USB_STATE_NOTATTACHED ; 
 struct usb_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*) ; 
 int FUNC2 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
		struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct usb_device *udev = FUNC0(dev);
	int rc = 0;

	FUNC1(udev);
	if (udev->state != USB_STATE_NOTATTACHED) {

		/* To avoid races, first unconfigure and then remove */
		FUNC3(udev, -1);
		rc = FUNC2(udev);
	}
	if (rc == 0)
		rc = count;
	FUNC4(udev);
	return rc;
}