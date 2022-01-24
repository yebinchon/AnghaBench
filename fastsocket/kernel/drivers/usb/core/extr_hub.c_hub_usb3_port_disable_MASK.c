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

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ HUB_DEBOUNCE_STEP ; 
 int HUB_DEBOUNCE_TIMEOUT ; 
 int USB_PORT_STAT_LINK_STATE ; 
 int USB_SS_PORT_LS_RX_DETECT ; 
 int USB_SS_PORT_LS_SS_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct usb_hub*,int,int*,int*) ; 
 int FUNC4 (struct usb_hub*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct usb_hub *hub, int port1)
{
	int ret;
	int total_time;
	u16 portchange, portstatus;

	if (!FUNC2(hub->hdev))
		return -EINVAL;

	ret = FUNC4(hub, port1, USB_SS_PORT_LS_SS_DISABLED);
	if (ret) {
		FUNC0(hub->intfdev, "cannot disable port %d (err = %d)\n",
				port1, ret);
		return ret;
	}

	/* Wait for the link to enter the disabled state. */
	for (total_time = 0; ; total_time += HUB_DEBOUNCE_STEP) {
		ret = FUNC3(hub, port1, &portstatus, &portchange);
		if (ret < 0)
			return ret;

		if ((portstatus & USB_PORT_STAT_LINK_STATE) ==
				USB_SS_PORT_LS_SS_DISABLED)
			break;
		if (total_time >= HUB_DEBOUNCE_TIMEOUT)
			break;
		FUNC5(HUB_DEBOUNCE_STEP);
	}
	if (total_time >= HUB_DEBOUNCE_TIMEOUT)
		FUNC1(hub->intfdev, "Could not disable port %d after %d ms\n",
				port1, total_time);

	return FUNC4(hub, port1, USB_SS_PORT_LS_RX_DETECT);
}