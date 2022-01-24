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
struct usb_hub {int /*<<< orphan*/  intfdev; int /*<<< orphan*/  hdev; } ;
struct usb_device {int /*<<< orphan*/  speed; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  HUB_BH_RESET_TIME ; 
 unsigned int HUB_LONG_RESET_TIME ; 
 int HUB_RESET_TIMEOUT ; 
 int HUB_SHORT_RESET_TIME ; 
 int /*<<< orphan*/  USB_PORT_FEAT_C_CONNECTION ; 
 int /*<<< orphan*/  USB_PORT_FEAT_C_PORT_LINK_STATE ; 
 int /*<<< orphan*/  USB_PORT_FEAT_C_RESET ; 
 int USB_PORT_STAT_CONNECTION ; 
 int USB_PORT_STAT_C_CONNECTION ; 
 int USB_PORT_STAT_C_LINK_STATE ; 
 int USB_PORT_STAT_C_RESET ; 
 int USB_PORT_STAT_ENABLE ; 
 int USB_PORT_STAT_HIGH_SPEED ; 
 int USB_PORT_STAT_LOW_SPEED ; 
 int USB_PORT_STAT_RESET ; 
 int /*<<< orphan*/  USB_SPEED_FULL ; 
 int /*<<< orphan*/  USB_SPEED_HIGH ; 
 int /*<<< orphan*/  USB_SPEED_LOW ; 
 int /*<<< orphan*/  USB_SPEED_SUPER ; 
 int /*<<< orphan*/  USB_SPEED_WIRELESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct usb_hub*) ; 
 int FUNC4 (struct usb_hub*,int,struct usb_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct usb_hub*,int,int*,int*) ; 
 scalar_t__ FUNC6 (struct usb_hub*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 

__attribute__((used)) static int FUNC8(struct usb_hub *hub, int port1,
			struct usb_device *udev, unsigned int delay, bool warm)
{
	int delay_time, ret;
	u16 portstatus;
	u16 portchange;

	for (delay_time = 0;
			delay_time < HUB_RESET_TIMEOUT;
			delay_time += delay) {
		/* wait to give the device a chance to reset */
		FUNC7(delay);

		/* read and decode port status */
		ret = FUNC5(hub, port1, &portstatus, &portchange);
		if (ret < 0)
			return ret;

		/* The port state is unknown until the reset completes. */
		if ((portstatus & USB_PORT_STAT_RESET))
			goto delay;

		/*
		 * Some buggy devices require a warm reset to be issued even
		 * when the port appears not to be connected.
		 */
		if (!warm) {
			/*
			 * Some buggy devices can cause an NEC host controller
			 * to transition to the "Error" state after a hot port
			 * reset.  This will show up as the port state in
			 * "Inactive", and the port may also report a
			 * disconnect.  Forcing a warm port reset seems to make
			 * the device work.
			 *
			 * See https://bugzilla.kernel.org/show_bug.cgi?id=41752
			 */
			if (FUNC6(hub, portstatus)) {
				int ret;

				if ((portchange & USB_PORT_STAT_C_CONNECTION))
					FUNC0(hub->hdev, port1,
							USB_PORT_FEAT_C_CONNECTION);
				if (portchange & USB_PORT_STAT_C_LINK_STATE)
					FUNC0(hub->hdev, port1,
							USB_PORT_FEAT_C_PORT_LINK_STATE);
				if (portchange & USB_PORT_STAT_C_RESET)
					FUNC0(hub->hdev, port1,
							USB_PORT_FEAT_C_RESET);
				FUNC1(hub->intfdev, "hot reset failed, warm reset port %d\n",
						port1);
				ret = FUNC4(hub, port1,
						udev, HUB_BH_RESET_TIME,
						true);
				if ((portchange & USB_PORT_STAT_C_CONNECTION))
					FUNC0(hub->hdev, port1,
							USB_PORT_FEAT_C_CONNECTION);
				return ret;
			}
			/* Device went away? */
			if (!(portstatus & USB_PORT_STAT_CONNECTION))
				return -ENOTCONN;

			/* bomb out completely if the connection bounced */
			if ((portchange & USB_PORT_STAT_C_CONNECTION))
				return -ENOTCONN;

			if ((portstatus & USB_PORT_STAT_ENABLE)) {
				if (FUNC3(hub))
					udev->speed = USB_SPEED_WIRELESS;
				else if (FUNC2(hub->hdev))
					udev->speed = USB_SPEED_SUPER;
				else if (portstatus & USB_PORT_STAT_HIGH_SPEED)
					udev->speed = USB_SPEED_HIGH;
				else if (portstatus & USB_PORT_STAT_LOW_SPEED)
					udev->speed = USB_SPEED_LOW;
				else
					udev->speed = USB_SPEED_FULL;
				return 0;
			}
		} else {
			if (!(portstatus & USB_PORT_STAT_CONNECTION) ||
					FUNC6(hub,
						portstatus))
				return -ENOTCONN;

			return 0;
		}

delay:
		/* switch to the long delay after two short delay failures */
		if (delay_time >= 2 * HUB_SHORT_RESET_TIME)
			delay = HUB_LONG_RESET_TIME;

		FUNC1 (hub->intfdev,
			"port %d not %sreset yet, waiting %dms\n",
			port1, warm ? "warm " : "", delay);
	}

	return -EBUSY;
}