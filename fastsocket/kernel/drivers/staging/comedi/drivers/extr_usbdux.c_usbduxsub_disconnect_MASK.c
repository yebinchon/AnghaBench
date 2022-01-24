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
struct usbduxsub {int /*<<< orphan*/  sem; struct usb_device* usbdev; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  start_stop_sem ; 
 int /*<<< orphan*/  FUNC5 (struct usbduxsub*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct usbduxsub* FUNC7 (struct usb_interface*) ; 

__attribute__((used)) static void FUNC8(struct usb_interface *intf)
{
	struct usbduxsub *usbduxsub_tmp = FUNC7(intf);
	struct usb_device *udev = FUNC4(intf);

	if (!usbduxsub_tmp) {
		FUNC2(&intf->dev,
			"comedi_: disconnect called with null pointer.\n");
		return;
	}
	if (usbduxsub_tmp->usbdev != udev) {
		FUNC2(&intf->dev, "comedi_: BUG! called with wrong ptr!!!\n");
		return;
	}
	FUNC0(udev);
	FUNC3(&start_stop_sem);
	FUNC3(&usbduxsub_tmp->sem);
	FUNC5(usbduxsub_tmp);
	FUNC6(&usbduxsub_tmp->sem);
	FUNC6(&start_stop_sem);
	FUNC1(&intf->dev, "comedi_: disconnected from the usb\n");
}