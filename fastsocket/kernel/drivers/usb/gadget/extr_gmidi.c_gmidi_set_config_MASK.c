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
struct usb_gadget {int speed; } ;
struct gmidi_device {unsigned int config; int /*<<< orphan*/  out_ep; int /*<<< orphan*/  in_ep; struct usb_gadget* gadget; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct gmidi_device*,char*) ; 
 int ESPIPE ; 
#define  GMIDI_CONFIG 131 
 int /*<<< orphan*/  FUNC1 (struct gmidi_device*,char*,char*) ; 
#define  USB_SPEED_FULL 130 
#define  USB_SPEED_HIGH 129 
#define  USB_SPEED_LOW 128 
 scalar_t__ FUNC2 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC3 (struct gmidi_device*) ; 
 int FUNC4 (struct gmidi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct gmidi_device *dev, unsigned number, gfp_t gfp_flags)
{
	int result = 0;
	struct usb_gadget *gadget = dev->gadget;

#if 0
	/* FIXME */
	/* Hacking this bit out fixes a bug where on receipt of two
	   USB_REQ_SET_CONFIGURATION messages, we end up with no
	   buffered OUT requests waiting for data. This is clearly
	   hiding a bug elsewhere, because if the config didn't
	   change then we really shouldn't do anything. */
	/* Having said that, when we do "change" from config 1
	   to config 1, we at least gmidi_reset_config() which
	   clears out any requests on endpoints, so it's not like
	   we leak or anything. */
	if (number == dev->config) {
		return 0;
	}
#endif

	if (FUNC2(gadget) && dev->config) {
		/* tx fifo is full, but we can't clear it...*/
		FUNC0(dev, "can't change configurations\n");
		return -ESPIPE;
	}
	FUNC3(dev);

	switch (number) {
	case GMIDI_CONFIG:
		result = FUNC4(dev, gfp_flags);
		break;
	default:
		result = -EINVAL;
		/* FALL THROUGH */
	case 0:
		return result;
	}

	if (!result && (!dev->in_ep || !dev->out_ep)) {
		result = -ENODEV;
	}
	if (result) {
		FUNC3(dev);
	} else {
		char *speed;

		switch (gadget->speed) {
		case USB_SPEED_LOW:	speed = "low"; break;
		case USB_SPEED_FULL:	speed = "full"; break;
		case USB_SPEED_HIGH:	speed = "high"; break;
		default:		speed = "?"; break;
		}

		dev->config = number;
		FUNC1(dev, "%s speed\n", speed);
	}
	return result;
}