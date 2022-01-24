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
struct wusbhc {int dummy; } ;
struct usb_hcd {scalar_t__ wireless; } ;
struct usb_device {int devnum; int /*<<< orphan*/  wusb; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC2 (struct usb_device*) ; 
 struct wusbhc* FUNC3 (struct usb_hcd*) ; 

__attribute__((used)) static inline struct wusbhc *FUNC4(struct usb_device *usb_dev)
{
	struct wusbhc *wusbhc = NULL;
	struct usb_hcd *usb_hcd;
	if (usb_dev->devnum > 1 && !usb_dev->wusb) {
		/* but root hubs */
		FUNC1(&usb_dev->dev, "devnum %d wusb %d\n", usb_dev->devnum,
			usb_dev->wusb);
		FUNC0(usb_dev->devnum > 1 && !usb_dev->wusb);
	}
	usb_hcd = FUNC2(usb_dev);
	if (usb_hcd == NULL)
		return NULL;
	FUNC0(usb_hcd->wireless == 0);
	return wusbhc = FUNC3(usb_hcd);
}