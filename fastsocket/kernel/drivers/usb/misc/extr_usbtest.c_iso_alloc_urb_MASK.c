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
struct usb_endpoint_descriptor {int bInterval; int /*<<< orphan*/  wMaxPacketSize; } ;
struct usb_device {int dummy; } ;
struct urb {int pipe; unsigned int number_of_packets; long transfer_buffer_length; int interval; int transfer_flags; int /*<<< orphan*/  complete; TYPE_1__* iso_frame_desc; int /*<<< orphan*/  transfer_buffer; int /*<<< orphan*/  transfer_dma; struct usb_device* dev; } ;
struct TYPE_2__ {unsigned int offset; scalar_t__ length; } ;

/* Variables and functions */
 unsigned int FUNC0 (long,unsigned int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int URB_ISO_ASAP ; 
 int URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  iso_callback ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 scalar_t__ FUNC3 (unsigned int,unsigned int) ; 
 struct urb* FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*,long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 

__attribute__((used)) static struct urb *FUNC7 (
	struct usb_device	*udev,
	int			pipe,
	struct usb_endpoint_descriptor	*desc,
	long			bytes
)
{
	struct urb		*urb;
	unsigned		i, maxp, packets;

	if (bytes < 0 || !desc)
		return NULL;
	maxp = 0x7ff & FUNC1(desc->wMaxPacketSize);
	maxp *= 1 + (0x3 & (FUNC1(desc->wMaxPacketSize) >> 11));
	packets = FUNC0(bytes, maxp);

	urb = FUNC4 (packets, GFP_KERNEL);
	if (!urb)
		return urb;
	urb->dev = udev;
	urb->pipe = pipe;

	urb->number_of_packets = packets;
	urb->transfer_buffer_length = bytes;
	urb->transfer_buffer = FUNC5 (udev, bytes, GFP_KERNEL,
			&urb->transfer_dma);
	if (!urb->transfer_buffer) {
		FUNC6 (urb);
		return NULL;
	}
	FUNC2 (urb->transfer_buffer, 0, bytes);
	for (i = 0; i < packets; i++) {
		/* here, only the last packet will be short */
		urb->iso_frame_desc[i].length = FUNC3 ((unsigned) bytes, maxp);
		bytes -= urb->iso_frame_desc[i].length;

		urb->iso_frame_desc[i].offset = maxp * i;
	}

	urb->complete = iso_callback;
	// urb->context = SET BY CALLER
	urb->interval = 1 << (desc->bInterval - 1);
	urb->transfer_flags = URB_ISO_ASAP | URB_NO_TRANSFER_DMA_MAP;
	return urb;
}