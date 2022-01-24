#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_usb_midi_in_endpoint {TYPE_1__** urbs; struct snd_usb_midi* umidi; } ;
struct snd_usb_midi_endpoint_info {int /*<<< orphan*/  in_interval; int /*<<< orphan*/  in_ep; } ;
struct snd_usb_midi_endpoint {struct snd_usb_midi_in_endpoint* in; } ;
struct snd_usb_midi {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  transfer_dma; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int INPUT_URBS ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 struct snd_usb_midi_in_endpoint* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_usb_midi_in_endpoint*) ; 
 int /*<<< orphan*/  snd_usbmidi_in_urb_complete ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,unsigned int,void*,int,int /*<<< orphan*/ ,struct snd_usb_midi_in_endpoint*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,unsigned int,void*,int,int /*<<< orphan*/ ,struct snd_usb_midi_in_endpoint*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct snd_usb_midi* umidi,
					  struct snd_usb_midi_endpoint_info* ep_info,
					  struct snd_usb_midi_endpoint* rep)
{
	struct snd_usb_midi_in_endpoint* ep;
	void* buffer;
	unsigned int pipe;
	int length;
	unsigned int i;

	rep->in = NULL;
	ep = FUNC0(sizeof(*ep), GFP_KERNEL);
	if (!ep)
		return -ENOMEM;
	ep->umidi = umidi;

	for (i = 0; i < INPUT_URBS; ++i) {
		ep->urbs[i] = FUNC2(0, GFP_KERNEL);
		if (!ep->urbs[i]) {
			FUNC1(ep);
			return -ENOMEM;
		}
	}
	if (ep_info->in_interval)
		pipe = FUNC8(umidi->dev, ep_info->in_ep);
	else
		pipe = FUNC7(umidi->dev, ep_info->in_ep);
	length = FUNC6(umidi->dev, pipe, 0);
	for (i = 0; i < INPUT_URBS; ++i) {
		buffer = FUNC3(umidi->dev, length, GFP_KERNEL,
					  &ep->urbs[i]->transfer_dma);
		if (!buffer) {
			FUNC1(ep);
			return -ENOMEM;
		}
		if (ep_info->in_interval)
			FUNC5(ep->urbs[i], umidi->dev,
					 pipe, buffer, length,
					 snd_usbmidi_in_urb_complete,
					 ep, ep_info->in_interval);
		else
			FUNC4(ep->urbs[i], umidi->dev,
					  pipe, buffer, length,
					  snd_usbmidi_in_urb_complete, ep);
		ep->urbs[i]->transfer_flags = URB_NO_TRANSFER_DMA_MAP;
	}

	rep->in = ep;
	return 0;
}