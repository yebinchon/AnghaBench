#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usbdevfs_hub_portinfo {int nports; int /*<<< orphan*/ * port; } ;
struct usb_interface {int dummy; } ;
struct usb_device {int maxchild; TYPE_1__** children; int /*<<< orphan*/  devnum; } ;
struct TYPE_2__ {int /*<<< orphan*/  devnum; } ;

/* Variables and functions */
 int ENOSYS ; 
#define  USBDEVFS_HUB_PORTINFO 128 
 int /*<<< orphan*/  device_state_lock ; 
 struct usb_device* FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct usb_interface *intf, unsigned int code, void *user_data)
{
	struct usb_device *hdev = FUNC0 (intf);

	/* assert ifno == 0 (part of hub spec) */
	switch (code) {
	case USBDEVFS_HUB_PORTINFO: {
		struct usbdevfs_hub_portinfo *info = user_data;
		int i;

		FUNC1(&device_state_lock);
		if (hdev->devnum <= 0)
			info->nports = 0;
		else {
			info->nports = hdev->maxchild;
			for (i = 0; i < info->nports; i++) {
				if (hdev->children[i] == NULL)
					info->port[i] = 0;
				else
					info->port[i] =
						hdev->children[i]->devnum;
			}
		}
		FUNC2(&device_state_lock);

		return info->nports + 1;
		}

	default:
		return -ENOSYS;
	}
}