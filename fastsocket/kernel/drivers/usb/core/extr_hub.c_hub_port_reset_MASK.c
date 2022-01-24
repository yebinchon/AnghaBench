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
typedef  int /*<<< orphan*/  u16 ;
struct usb_hub {int /*<<< orphan*/  hdev; int /*<<< orphan*/  intfdev; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOTCONN ; 
 unsigned int HUB_LONG_RESET_TIME ; 
 int PORT_RESET_TRIES ; 
 int /*<<< orphan*/  USB_PORT_FEAT_BH_PORT_RESET ; 
 int /*<<< orphan*/  USB_PORT_FEAT_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ehci_cf_port_reset_rwsem ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_hub*,int,struct usb_device*,int*,int) ; 
 int FUNC5 (struct usb_hub*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct usb_hub*,int,struct usb_device*,unsigned int,int) ; 
 scalar_t__ FUNC7 (struct usb_hub*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct usb_hub *hub, int port1,
			struct usb_device *udev, unsigned int delay, bool warm)
{
	int i, status;
	u16 portchange, portstatus;

	if (!FUNC3(hub->hdev)) {
		if (warm) {
			FUNC1(hub->intfdev, "only USB3 hub support "
						"warm reset\n");
			return -EINVAL;
		}
		/* Block EHCI CF initialization during the port reset.
		 * Some companion controllers don't like it when they mix.
		 */
		FUNC2(&ehci_cf_port_reset_rwsem);
	} else if (!warm) {
		/*
		 * If the caller hasn't explicitly requested a warm reset,
		 * double check and see if one is needed.
		 */
		status = FUNC5(hub, port1,
					&portstatus, &portchange);
		if (status < 0)
			goto done;

		if (FUNC7(hub, portstatus))
			warm = true;
	}

	/* Reset the port */
	for (i = 0; i < PORT_RESET_TRIES; i++) {
		status = FUNC8(hub->hdev, port1, (warm ?
					USB_PORT_FEAT_BH_PORT_RESET :
					USB_PORT_FEAT_RESET));
		if (status) {
			FUNC1(hub->intfdev,
					"cannot %sreset port %d (err = %d)\n",
					warm ? "warm " : "", port1, status);
		} else {
			status = FUNC6(hub, port1, udev, delay,
								warm);
			if (status && status != -ENOTCONN)
				FUNC0(hub->intfdev,
						"port_wait_reset: err = %d\n",
						status);
		}

		/* return on disconnect or reset */
		if (status == 0 || status == -ENOTCONN || status == -ENODEV) {
			FUNC4(hub, port1, udev, &status, warm);
			goto done;
		}

		FUNC0 (hub->intfdev,
			"port %d not enabled, trying %sreset again...\n",
			port1, warm ? "warm " : "");
		delay = HUB_LONG_RESET_TIME;
	}

	FUNC1 (hub->intfdev,
		"Cannot enable port %i.  Maybe the USB cable is bad?\n",
		port1);

done:
	if (!FUNC3(hub->hdev))
		FUNC9(&ehci_cf_port_reset_rwsem);

	return status;
}