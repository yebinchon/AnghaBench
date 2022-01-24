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
struct usb_hub_descriptor {int dummy; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int USB_DIR_IN ; 
 unsigned int USB_DT_HUB ; 
 int USB_DT_HUB_NONVAR_SIZE ; 
 unsigned int USB_DT_SS_HUB ; 
 int USB_DT_SS_HUB_SIZE ; 
 int /*<<< orphan*/  USB_REQ_GET_DESCRIPTOR ; 
 int USB_RT_HUB ; 
 scalar_t__ FUNC0 (struct usb_device*) ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct usb_device *hdev, void *data)
{
	int i, ret, size;
	unsigned dtype;

	if (FUNC0(hdev)) {
		dtype = USB_DT_SS_HUB;
		size = USB_DT_SS_HUB_SIZE;
	} else {
		dtype = USB_DT_HUB;
		size = sizeof(struct usb_hub_descriptor);
	}

	for (i = 0; i < 3; i++) {
		ret = FUNC1(hdev, FUNC2(hdev, 0),
			USB_REQ_GET_DESCRIPTOR, USB_DIR_IN | USB_RT_HUB,
			dtype << 8, 0, data, size,
			USB_CTRL_GET_TIMEOUT);
		if (ret >= (USB_DT_HUB_NONVAR_SIZE + 2))
			return ret;
	}
	return -EINVAL;
}