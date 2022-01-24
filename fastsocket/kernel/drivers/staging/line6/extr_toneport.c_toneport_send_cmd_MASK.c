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

/* Variables and functions */
 int HZ ; 
 int LINE6_TIMEOUT ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct usb_device *usbdev, int cmd1, int cmd2)
{
	int ret;

	ret = FUNC1(usbdev, FUNC2(usbdev, 0), 0x67,
			      USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_OUT,
			      cmd1, cmd2, NULL, 0, LINE6_TIMEOUT * HZ);

	if (ret < 0) {
		FUNC0("send failed (error %d)\n", ret);
		return ret;
	}

	return 0;
}