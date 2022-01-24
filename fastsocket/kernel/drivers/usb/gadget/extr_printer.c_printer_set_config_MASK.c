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
struct usb_gadget {int speed; scalar_t__ is_otg; } ;
struct printer_dev {unsigned int config; struct usb_gadget* gadget; } ;
struct TYPE_2__ {int bMaxPower; } ;

/* Variables and functions */
#define  DEV_CONFIG_VALUE 130 
 int EINVAL ; 
 int ESPIPE ; 
 int /*<<< orphan*/  FUNC0 (struct printer_dev*,char*,...) ; 
#define  USB_SPEED_FULL 129 
#define  USB_SPEED_HIGH 128 
 TYPE_1__ config_desc ; 
 int /*<<< orphan*/  driver_desc ; 
 scalar_t__ FUNC1 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_gadget*,unsigned int) ; 

__attribute__((used)) static int
FUNC3(struct printer_dev *dev, unsigned number)
{
	int			result = 0;
	struct usb_gadget	*gadget = dev->gadget;

	if (FUNC1(gadget) && dev->config) {
		/* tx fifo is full, but we can't clear it...*/
		FUNC0(dev, "can't change configurations\n");
		return -ESPIPE;
	}

	switch (number) {
	case DEV_CONFIG_VALUE:
		result = 0;
		break;
	default:
		result = -EINVAL;
		/* FALL THROUGH */
	case 0:
		break;
	}

	if (result) {
		FUNC2(dev->gadget,
				dev->gadget->is_otg ? 8 : 100);
	} else {
		char *speed;
		unsigned power;

		power = 2 * config_desc.bMaxPower;
		FUNC2(dev->gadget, power);

		switch (gadget->speed) {
		case USB_SPEED_FULL:	speed = "full"; break;
#ifdef CONFIG_USB_GADGET_DUALSPEED
		case USB_SPEED_HIGH:	speed = "high"; break;
#endif
		default:		speed = "?"; break;
		}

		dev->config = number;
		FUNC0(dev, "%s speed config #%d: %d mA, %s\n",
				speed, number, power, driver_desc);
	}
	return result;
}