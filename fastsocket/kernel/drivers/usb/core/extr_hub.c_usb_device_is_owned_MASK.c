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
struct usb_hub {int /*<<< orphan*/ * port_owners; } ;
struct usb_device {scalar_t__ state; int portnum; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 scalar_t__ USB_STATE_NOTATTACHED ; 
 struct usb_hub* FUNC0 (int /*<<< orphan*/ ) ; 

bool FUNC1(struct usb_device *udev)
{
	struct usb_hub *hub;

	if (udev->state == USB_STATE_NOTATTACHED || !udev->parent)
		return false;
	hub = FUNC0(udev->parent);
	return !!hub->port_owners[udev->portnum - 1];
}