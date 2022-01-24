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
struct usb_line6 {int /*<<< orphan*/  ifcdev; struct usb_device* usbdev; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int HZ ; 
 int LINE6_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int,int,int,int,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 

int FUNC4(struct usb_line6 *line6, int address, void *data,
		     size_t datalen)
{
	struct usb_device *usbdev = line6->usbdev;
	int ret;
	unsigned char status;

	ret = FUNC1(usbdev, FUNC3(usbdev, 0), 0x67,
			      USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_OUT,
			      0x0022, address, data, datalen,
			      LINE6_TIMEOUT * HZ);

	if (ret < 0) {
		FUNC0(line6->ifcdev,
			"write request failed (error %d)\n", ret);
		return ret;
	}

	do {
		ret = FUNC1(usbdev, FUNC2(usbdev, 0),
				      0x67,
				      USB_TYPE_VENDOR | USB_RECIP_DEVICE |
				      USB_DIR_IN,
				      0x0012, 0x0000,
				      &status, 1, LINE6_TIMEOUT * HZ);

		if (ret < 0) {
			FUNC0(line6->ifcdev,
				"receiving status failed (error %d)\n", ret);
			return ret;
		}
	}
	while (status == 0xff)
		;

	if (status != 0) {
		FUNC0(line6->ifcdev, "write failed (error %d)\n", ret);
		return -EINVAL;
	}

	return 0;
}