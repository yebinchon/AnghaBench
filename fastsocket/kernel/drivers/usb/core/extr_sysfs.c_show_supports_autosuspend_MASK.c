#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  driver; } ;
struct usb_interface {TYPE_1__ dev; } ;
struct usb_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_4__ {scalar_t__ supports_autosuspend; } ;

/* Variables and functions */
 struct usb_device* FUNC0 (struct usb_interface*) ; 
 int FUNC1 (char*,char*,int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct usb_interface *intf;
	struct usb_device *udev;
	int ret;

	intf = FUNC3(dev);
	udev = FUNC0(intf);

	FUNC4(udev);
	/* Devices will be autosuspended even when an interface isn't claimed */
	if (!intf->dev.driver ||
			FUNC2(intf->dev.driver)->supports_autosuspend)
		ret = FUNC1(buf, "%u\n", 1);
	else
		ret = FUNC1(buf, "%u\n", 0);
	FUNC5(udev);

	return ret;
}