#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_mixer_interface {int /*<<< orphan*/  urb; TYPE_1__* chip; int /*<<< orphan*/  hostif; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  wMaxPacketSize; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct usb_endpoint_descriptor* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snd_usb_mixer_interrupt ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_endpoint_descriptor*) ; 
 unsigned int FUNC7 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,struct usb_mixer_interface*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct usb_mixer_interface *mixer)
{
	struct usb_endpoint_descriptor *ep;
	void *transfer_buffer;
	int buffer_length;
	unsigned int epnum;

	/* we need one interrupt input endpoint */
	if (FUNC1(mixer->hostif)->bNumEndpoints < 1)
		return 0;
	ep = FUNC0(mixer->hostif, 0);
	if (!FUNC6(ep) || !FUNC8(ep))
		return 0;

	epnum = FUNC7(ep);
	buffer_length = FUNC4(ep->wMaxPacketSize);
	transfer_buffer = FUNC3(buffer_length, GFP_KERNEL);
	if (!transfer_buffer)
		return -ENOMEM;
	mixer->urb = FUNC5(0, GFP_KERNEL);
	if (!mixer->urb) {
		FUNC2(transfer_buffer);
		return -ENOMEM;
	}
	FUNC9(mixer->urb, mixer->chip->dev,
			 FUNC10(mixer->chip->dev, epnum),
			 transfer_buffer, buffer_length,
			 snd_usb_mixer_interrupt, mixer, ep->bInterval);
	FUNC11(mixer->urb, GFP_KERNEL);
	return 0;
}