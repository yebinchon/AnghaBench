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
struct usb_line6 {struct usb_device* usbdev; } ;
struct usb_line6_toneport {int /*<<< orphan*/  firmware_version; int /*<<< orphan*/  serial_number; struct usb_line6 line6; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ idProduct; } ;
struct usb_device {int /*<<< orphan*/  dev; TYPE_1__ descriptor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 scalar_t__ LINE6_DEVID_GUITARPORT ; 
 int /*<<< orphan*/  dev_attr_led_green ; 
 int /*<<< orphan*/  dev_attr_led_red ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (struct usb_line6*) ; 
 int FUNC4 (struct usb_line6*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_line6*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_line6*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct usb_line6*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_line6*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_interface*) ; 
 int /*<<< orphan*/  toneport_pcm_properties ; 
 int /*<<< orphan*/  FUNC10 (struct usb_device*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct usb_interface *interface,
		  struct usb_line6_toneport *toneport)
{
	int err, ticks;
	struct usb_line6 *line6 = &toneport->line6;
	struct usb_device *usbdev;

	if ((interface == NULL) || (toneport == NULL))
		return -ENODEV;

	/* initialize audio system: */
	err = FUNC3(line6);
	if (err < 0) {
		FUNC9(interface);
		return err;
	}

	/* initialize PCM subsystem: */
	err = FUNC4(line6, &toneport_pcm_properties);
	if (err < 0) {
		FUNC9(interface);
		return err;
	}

	/* register audio system: */
	err = FUNC7(line6);
	if (err < 0) {
		FUNC9(interface);
		return err;
	}

	usbdev = line6->usbdev;
	FUNC6(line6, &toneport->serial_number);
	FUNC5(line6, 0x80c2, &toneport->firmware_version, 1);

	/* sync time on device with host: */
	ticks = (int)FUNC2();
	FUNC8(line6, 0x80c6, &ticks, 4);

	/*
	seems to work without the first two...
	*/
	/* toneport_send_cmd(usbdev, 0x0201, 0x0002); */
	/* toneport_send_cmd(usbdev, 0x0801, 0x0000); */
	/* only one that works for me; on GP, TP might be different? */
	FUNC10(usbdev, 0x0301, 0x0000);

	if (usbdev->descriptor.idProduct != LINE6_DEVID_GUITARPORT) {
		FUNC0(FUNC1(&interface->dev, &dev_attr_led_red));
		FUNC0(FUNC1(&interface->dev, &dev_attr_led_green));
		FUNC11(&usbdev->dev);
	}

	return 0;
}