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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {TYPE_1__ descriptor; } ;
struct snd_card {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int USB_ID_US122 ; 
 int USB_ID_US224 ; 
 int USB_ID_US428 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_card*) ; 
 int FUNC2 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_card*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct usb_device*,struct snd_card**) ; 
 int FUNC5 (struct snd_card*,struct usb_device*) ; 

__attribute__((used)) static int FUNC6(struct usb_device *device,
			   struct usb_interface *intf,
			   const struct usb_device_id *device_id,
			   struct snd_card **cardp)
{
	int		err;
	struct snd_card *	card;

	*cardp = NULL;
	if (FUNC0(device->descriptor.idVendor) != 0x1604 ||
	    (FUNC0(device->descriptor.idProduct) != USB_ID_US122 &&
	     FUNC0(device->descriptor.idProduct) != USB_ID_US224 &&
	     FUNC0(device->descriptor.idProduct) != USB_ID_US428))
		return -EINVAL;

	err = FUNC4(device, &card);
	if (err < 0)
		return err;
	FUNC3(card, &intf->dev);
	if ((err = FUNC5(card, device)) < 0  ||
	    (err = FUNC2(card)) < 0) {
		FUNC1(card);
		return err;
	}
	*cardp = card;
	return 0;
}