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
struct usb_tranzport {int /*<<< orphan*/  sem; int /*<<< orphan*/ * intf; int /*<<< orphan*/  open_count; } ;
struct usb_interface {int minor; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ USB_TRANZPORT_MINOR_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  disconnect_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 struct usb_tranzport* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usb_tranzport_class ; 
 int /*<<< orphan*/  FUNC8 (struct usb_tranzport*) ; 

__attribute__((used)) static void FUNC9(struct usb_interface *intf)
{
	struct usb_tranzport *dev;
	int minor;
	FUNC2(&disconnect_mutex);
	dev = FUNC6(intf);
	FUNC7(intf, NULL);
	FUNC1(&dev->sem);
	minor = intf->minor;
	/* give back our minor */
	FUNC5(intf, &usb_tranzport_class);

	/* if the device is not opened, then we clean up right now */
	if (!dev->open_count) {
		FUNC4(&dev->sem);
		FUNC8(dev);
	} else {
		dev->intf = NULL;
		FUNC4(&dev->sem);
	}

	FUNC3(&disconnect_mutex);

	FUNC0(&intf->dev, "Tranzport Surface #%d now disconnected\n",
		(minor - USB_TRANZPORT_MINOR_BASE));
}