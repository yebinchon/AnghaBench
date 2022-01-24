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
struct usb_iso_packet_descriptor {int offset; int length; } ;
struct usb_device {int dummy; } ;
struct urb {unsigned int pipe; int transfer_buffer_length; int interval; int number_of_packets; int /*<<< orphan*/  complete; int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/ * context; struct usb_device* dev; struct usb_iso_packet_descriptor* iso_frame_desc; void* transfer_buffer; } ;
struct TYPE_2__ {struct usb_device* dev; } ;
struct snd_usb_caiaqdev {int /*<<< orphan*/ * data_cb_info; TYPE_1__ chip; } ;

/* Variables and functions */
 int BYTES_PER_FRAME ; 
 int /*<<< orphan*/  ENDPOINT_CAPTURE ; 
 int /*<<< orphan*/  ENDPOINT_PLAYBACK ; 
 int ENOMEM ; 
 int FRAMES_PER_URB ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int N_URBS ; 
 int SNDRV_PCM_STREAM_CAPTURE ; 
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  URB_ISO_ASAP ; 
 void* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  read_completed ; 
 struct urb* FUNC2 (int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_completed ; 

__attribute__((used)) static struct urb **FUNC5(struct snd_usb_caiaqdev *dev, int dir, int *ret)
{
	int i, frame;
	struct urb **urbs;
	struct usb_device *usb_dev = dev->chip.dev;
	unsigned int pipe;

	pipe = (dir == SNDRV_PCM_STREAM_PLAYBACK) ?
		FUNC4(usb_dev, ENDPOINT_PLAYBACK) :
		FUNC3(usb_dev, ENDPOINT_CAPTURE);

	urbs = FUNC0(N_URBS * sizeof(*urbs), GFP_KERNEL);
	if (!urbs) {
		FUNC1("unable to kmalloc() urbs, OOM!?\n");
		*ret = -ENOMEM;
		return NULL;
	}

	for (i = 0; i < N_URBS; i++) {
		urbs[i] = FUNC2(FRAMES_PER_URB, GFP_KERNEL);
		if (!urbs[i]) {
			FUNC1("unable to usb_alloc_urb(), OOM!?\n");
			*ret = -ENOMEM;
			return urbs;
		}

		urbs[i]->transfer_buffer =
			FUNC0(FRAMES_PER_URB * BYTES_PER_FRAME, GFP_KERNEL);
		if (!urbs[i]->transfer_buffer) {
			FUNC1("unable to kmalloc() transfer buffer, OOM!?\n");
			*ret = -ENOMEM;
			return urbs;
		}

		for (frame = 0; frame < FRAMES_PER_URB; frame++) {
			struct usb_iso_packet_descriptor *iso =
				&urbs[i]->iso_frame_desc[frame];

			iso->offset = BYTES_PER_FRAME * frame;
			iso->length = BYTES_PER_FRAME;
		}

		urbs[i]->dev = usb_dev;
		urbs[i]->pipe = pipe;
		urbs[i]->transfer_buffer_length = FRAMES_PER_URB
						* BYTES_PER_FRAME;
		urbs[i]->context = &dev->data_cb_info[i];
		urbs[i]->interval = 1;
		urbs[i]->transfer_flags = URB_ISO_ASAP;
		urbs[i]->number_of_packets = FRAMES_PER_URB;
		urbs[i]->complete = (dir == SNDRV_PCM_STREAM_CAPTURE) ?
					read_completed : write_completed;
	}

	*ret = 0;
	return urbs;
}