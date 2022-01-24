#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct urb {int number_of_packets; void* transfer_flags; TYPE_1__* iso_frame_desc; struct snd_usb_caiaq_cb_info* context; scalar_t__ status; } ;
struct snd_usb_caiaqdev {int /*<<< orphan*/  outurb_active_mask; int /*<<< orphan*/  sub_capture; int /*<<< orphan*/  sub_playback; int /*<<< orphan*/  spinlock; struct urb** data_urbs_out; int /*<<< orphan*/  streaming; } ;
struct snd_usb_caiaq_cb_info {int /*<<< orphan*/  index; struct snd_usb_caiaqdev* dev; } ;
struct TYPE_3__ {int actual_length; int length; size_t offset; scalar_t__ status; } ;

/* Variables and functions */
 int BYTES_PER_FRAME ; 
 int FRAMES_PER_URB ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int N_URBS ; 
 void* URB_ISO_ASAP ; 
 int /*<<< orphan*/  FUNC0 (struct snd_usb_caiaqdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_usb_caiaqdev*,struct urb*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_usb_caiaqdev*,struct urb*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct urb *urb)
{
	struct snd_usb_caiaq_cb_info *info = urb->context;
	struct snd_usb_caiaqdev *dev;
	struct urb *out = NULL;
	int i, frame, len, send_it = 0, outframe = 0;
	size_t offset = 0;

	if (urb->status || !info)
		return;

	dev = info->dev;

	if (!dev->streaming)
		return;

	/* find an unused output urb that is unused */
	for (i = 0; i < N_URBS; i++)
		if (FUNC7(i, &dev->outurb_active_mask) == 0) {
			out = dev->data_urbs_out[i];
			break;
		}

	if (!out) {
		FUNC3("Unable to find an output urb to use\n");
		goto requeue;
	}

	/* read the recently received packet and send back one which has
	 * the same layout */
	for (frame = 0; frame < FRAMES_PER_URB; frame++) {
		if (urb->iso_frame_desc[frame].status)
			continue;

		len = urb->iso_frame_desc[outframe].actual_length;
		out->iso_frame_desc[outframe].length = len;
		out->iso_frame_desc[outframe].actual_length = 0;
		out->iso_frame_desc[outframe].offset = offset;
		offset += len;

		if (len > 0) {
			FUNC5(&dev->spinlock);
			FUNC2(dev, out, &out->iso_frame_desc[outframe]);
			FUNC4(dev, urb, &urb->iso_frame_desc[frame]);
			FUNC6(&dev->spinlock);
			FUNC0(dev, dev->sub_playback);
			FUNC0(dev, dev->sub_capture);
			send_it = 1;
		}

		outframe++;
	}

	if (send_it) {
		out->number_of_packets = outframe;
		out->transfer_flags = URB_ISO_ASAP;
		FUNC8(out, GFP_ATOMIC);
	} else {
		struct snd_usb_caiaq_cb_info *oinfo = out->context;
		FUNC1(oinfo->index, &dev->outurb_active_mask);
	}

requeue:
	/* re-submit inbound urb */
	for (frame = 0; frame < FRAMES_PER_URB; frame++) {
		urb->iso_frame_desc[frame].offset = BYTES_PER_FRAME * frame;
		urb->iso_frame_desc[frame].length = BYTES_PER_FRAME;
		urb->iso_frame_desc[frame].actual_length = 0;
	}

	urb->number_of_packets = FRAMES_PER_URB;
	urb->transfer_flags = URB_ISO_ASAP;
	FUNC8(urb, GFP_ATOMIC);
}