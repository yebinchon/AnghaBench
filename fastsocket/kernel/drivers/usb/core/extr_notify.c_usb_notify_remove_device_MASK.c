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
 int /*<<< orphan*/  USB_DEVICE_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usb_notifier_list ; 
 int /*<<< orphan*/  usbfs_mutex ; 

void FUNC3(struct usb_device *udev)
{
	/* Protect against simultaneous usbfs open */
	FUNC1(&usbfs_mutex);
	FUNC0(&usb_notifier_list,
			USB_DEVICE_REMOVE, udev);
	FUNC2(&usbfs_mutex);
}