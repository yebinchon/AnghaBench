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
struct wusbhc {int dummy; } ;
struct wusb_dev {int dummy; } ;
struct device {int /*<<< orphan*/  kobj; } ;
struct usb_device {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wusb_dev_attr_group ; 

int FUNC2(struct wusbhc *wusbhc, struct usb_device *usb_dev,
		       struct wusb_dev *wusb_dev)
{
	int result = FUNC1(&usb_dev->dev.kobj,
					&wusb_dev_attr_group);
	struct device *dev = &usb_dev->dev;
	if (result < 0)
		FUNC0(dev, "Cannot register WUSB-dev attributes: %d\n",
			result);
	return result;
}