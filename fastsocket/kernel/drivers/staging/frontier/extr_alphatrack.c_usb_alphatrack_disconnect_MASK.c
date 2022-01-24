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
struct usb_interface {int minor; int /*<<< orphan*/  dev; } ;
struct usb_alphatrack {int /*<<< orphan*/  writes_pending; int /*<<< orphan*/  sem; int /*<<< orphan*/ * intf; int /*<<< orphan*/  open_count; } ;

/* Variables and functions */
 scalar_t__ USB_ALPHATRACK_MINOR_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  disconnect_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usb_alphatrack_class ; 
 int /*<<< orphan*/  FUNC6 (struct usb_alphatrack*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 struct usb_alphatrack* FUNC8 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct usb_interface *intf)
{
	struct usb_alphatrack *dev;
	int minor;

	FUNC3(&disconnect_mutex);

	dev = FUNC8(intf);
	FUNC9(intf, NULL);

	FUNC2(&dev->sem);

	minor = intf->minor;

	/* give back our minor */
	FUNC7(intf, &usb_alphatrack_class);

	/* if the device is not opened, then we clean up right now */
	if (!dev->open_count) {
		FUNC5(&dev->sem);
		FUNC6(dev);
	} else {
		dev->intf = NULL;
		FUNC5(&dev->sem);
	}

	FUNC0(&dev->writes_pending, 0);
	FUNC4(&disconnect_mutex);

	FUNC1(&intf->dev, "Alphatrack Surface #%d now disconnected\n",
		 (minor - USB_ALPHATRACK_MINOR_BASE));
}