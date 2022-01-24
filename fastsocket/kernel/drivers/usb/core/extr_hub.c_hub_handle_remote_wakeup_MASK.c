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
typedef  int u16 ;
struct usb_hub {int /*<<< orphan*/  intfdev; struct usb_device* hdev; } ;
struct usb_device {scalar_t__ state; struct usb_device** children; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  USB_PORT_FEAT_C_SUSPEND ; 
 int USB_PORT_STAT_C_SUSPEND ; 
 int USB_PORT_STAT_LINK_STATE ; 
 int USB_SS_PORT_LS_U0 ; 
 scalar_t__ USB_STATE_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (struct usb_device*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_hub*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*) ; 

__attribute__((used)) static int FUNC8(struct usb_hub *hub, unsigned int port,
		u16 portstatus, u16 portchange)
{
	struct usb_device *hdev;
	struct usb_device *udev;
	int connect_change = 0;
	int ret;

	hdev = hub->hdev;
	udev = hdev->children[port-1];
	if (!FUNC2(hdev)) {
		if (!(portchange & USB_PORT_STAT_C_SUSPEND))
			return 0;
		FUNC0(hdev, port, USB_PORT_FEAT_C_SUSPEND);
	} else {
		if (!udev || udev->state != USB_STATE_SUSPENDED ||
				 (portstatus & USB_PORT_STAT_LINK_STATE) !=
				 USB_SS_PORT_LS_U0)
			return 0;
	}

	if (udev) {
		/* TRSMRCY = 10 msec */
		FUNC4(10);

		FUNC6(udev);
		ret = FUNC5(udev);
		FUNC7(udev);
		if (ret < 0)
			connect_change = 1;
	} else {
		ret = -ENODEV;
		FUNC3(hub, port, 1);
	}
	FUNC1(hub->intfdev, "resume on port %d, status %d\n",
			port, ret);
	return connect_change;
}