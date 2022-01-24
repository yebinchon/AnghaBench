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
struct usbatm_data {int dummy; } ;
struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  uea_driver ; 
 int /*<<< orphan*/  FUNC0 (struct usb_device*,char*,int,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct usb_interface*,struct usbatm_data*) ; 
 struct usb_interface* FUNC2 (struct usb_device*,int) ; 

__attribute__((used)) static int FUNC3(struct usb_device *usb_dev,
			   struct usbatm_data *usbatm, int ifnum)
{
	int ret;
	struct usb_interface *intf = FUNC2(usb_dev, ifnum);

	if (!intf) {
		FUNC0(usb_dev, "interface %d not found\n", ifnum);
		return -ENODEV;
	}

	ret = FUNC1(&uea_driver, intf, usbatm);
	if (ret != 0)
		FUNC0(usb_dev, "can't claim interface %d, error %d\n", ifnum,
		       ret);
	return ret;
}