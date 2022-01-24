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
struct usb_gadget {int /*<<< orphan*/  ep0; } ;
struct snd_card {int dummy; } ;
struct gmidi_device {TYPE_1__* req; struct snd_card* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gmidi_device*,char*) ; 
 int /*<<< orphan*/  USB_BUFSIZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 struct gmidi_device* FUNC2 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC3 (struct gmidi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_gadget*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_card*) ; 

__attribute__((used)) static void /* __init_or_exit */ FUNC6(struct usb_gadget *gadget)
{
	struct gmidi_device *dev = FUNC2(gadget);
	struct snd_card *card;

	FUNC0(dev, "unbind\n");

	card = dev->card;
	dev->card = NULL;
	if (card) {
		FUNC5(card);
	}

	/* we've already been disconnected ... no i/o is active */
	if (dev->req) {
		dev->req->length = USB_BUFSIZ;
		FUNC1(gadget->ep0, dev->req);
	}
	FUNC3(dev);
	FUNC4(gadget, NULL);
}