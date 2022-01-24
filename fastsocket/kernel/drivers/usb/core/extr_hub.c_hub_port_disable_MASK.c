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
struct usb_hub {int /*<<< orphan*/  intfdev; struct usb_device* hdev; int /*<<< orphan*/  error; } ;
struct usb_device {scalar_t__* children; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_PORT_FEAT_ENABLE ; 
 int /*<<< orphan*/  USB_STATE_NOTATTACHED ; 
 int FUNC0 (struct usb_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC2 (struct usb_device*) ; 
 int FUNC3 (struct usb_hub*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct usb_hub *hub, int port1, int set_state)
{
	struct usb_device *hdev = hub->hdev;
	int ret = 0;

	if (hdev->children[port1-1] && set_state)
		FUNC4(hdev->children[port1-1],
				USB_STATE_NOTATTACHED);
	if (!hub->error) {
		if (FUNC2(hub->hdev))
			ret = FUNC3(hub, port1);
		else
			ret = FUNC0(hdev, port1,
					USB_PORT_FEAT_ENABLE);
	}
	if (ret)
		FUNC1(hub->intfdev, "cannot disable port %d (err = %d)\n",
				port1, ret);
	return ret;
}