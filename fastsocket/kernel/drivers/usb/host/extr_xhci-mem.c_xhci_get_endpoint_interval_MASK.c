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
struct usb_host_endpoint {int /*<<< orphan*/  desc; } ;
struct usb_device {int speed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int FUNC1 (unsigned int) ; 
#define  USB_SPEED_FULL 131 
#define  USB_SPEED_HIGH 130 
#define  USB_SPEED_LOW 129 
#define  USB_SPEED_SUPER 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 (struct usb_device*,struct usb_host_endpoint*) ; 
 unsigned int FUNC7 (struct usb_device*,struct usb_host_endpoint*) ; 
 unsigned int FUNC8 (struct usb_device*,struct usb_host_endpoint*) ; 

__attribute__((used)) static unsigned int FUNC9(struct usb_device *udev,
		struct usb_host_endpoint *ep)
{
	unsigned int interval = 0;

	switch (udev->speed) {
	case USB_SPEED_HIGH:
		/* Max NAK rate */
		if (FUNC3(&ep->desc) ||
		    FUNC2(&ep->desc)) {
			interval = FUNC8(udev, ep);
			break;
		}
		/* Fall through - SS and HS isoc/int have same decoding */

	case USB_SPEED_SUPER:
		if (FUNC4(&ep->desc) ||
		    FUNC5(&ep->desc)) {
			interval = FUNC6(udev, ep);
		}
		break;

	case USB_SPEED_FULL:
		if (FUNC5(&ep->desc)) {
			interval = FUNC6(udev, ep);
			break;
		}
		/*
		 * Fall through for interrupt endpoint interval decoding
		 * since it uses the same rules as low speed interrupt
		 * endpoints.
		 */

	case USB_SPEED_LOW:
		if (FUNC4(&ep->desc) ||
		    FUNC5(&ep->desc)) {

			interval = FUNC7(udev, ep);
		}
		break;

	default:
		FUNC0();
	}
	return FUNC1(interval);
}