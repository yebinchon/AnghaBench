#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  unsigned int u32 ;
struct usb_device {scalar_t__ speed; unsigned int devnum; int ttport; TYPE_3__* tt; } ;
struct ehci_iso_stream {int highspeed; int usecs; long c_usecs; int raw_mask; long bandwidth; int bEndpointAddress; unsigned int interval; unsigned int maxp; struct usb_device* udev; void* address; int /*<<< orphan*/  tt_usecs; void* buf2; void* buf1; void* buf0; } ;
struct ehci_hcd {int dummy; } ;
struct TYPE_5__ {TYPE_2__* root_hub; } ;
struct TYPE_8__ {TYPE_1__ self; } ;
struct TYPE_7__ {int think_time; TYPE_2__* hub; } ;
struct TYPE_6__ {int devnum; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int USB_DIR_IN ; 
 scalar_t__ USB_SPEED_HIGH ; 
 void* FUNC2 (struct ehci_hcd*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct ehci_hcd*) ; 
 TYPE_4__* FUNC4 (struct ehci_hcd*) ; 
 unsigned int FUNC5 (unsigned int) ; 
 int FUNC6 (unsigned int,unsigned int) ; 
 unsigned int FUNC7 (unsigned int) ; 
 scalar_t__ FUNC8 (scalar_t__,int,int,unsigned int) ; 
 unsigned int FUNC9 (struct usb_device*,int,int) ; 
 unsigned int FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static void
FUNC12 (
	struct ehci_hcd		*ehci,
	struct ehci_iso_stream	*stream,
	struct usb_device	*dev,
	int			pipe,
	unsigned		interval
)
{
	static const u8 smask_out [] = { 0x01, 0x03, 0x07, 0x0f, 0x1f, 0x3f };

	u32			buf1;
	unsigned		epnum, maxp;
	int			is_input;
	long			bandwidth;

	/*
	 * this might be a "high bandwidth" highspeed endpoint,
	 * as encoded in the ep descriptor's wMaxPacket field
	 */
	epnum = FUNC10 (pipe);
	is_input = FUNC11 (pipe) ? USB_DIR_IN : 0;
	maxp = FUNC9(dev, pipe, !is_input);
	if (is_input) {
		buf1 = (1 << 11);
	} else {
		buf1 = 0;
	}

	/* knows about ITD vs SITD */
	if (dev->speed == USB_SPEED_HIGH) {
		unsigned multi = FUNC5(maxp);

		stream->highspeed = 1;

		maxp = FUNC7(maxp);
		buf1 |= maxp;
		maxp *= multi;

		stream->buf0 = FUNC2(ehci, (epnum << 8) | dev->devnum);
		stream->buf1 = FUNC2(ehci, buf1);
		stream->buf2 = FUNC2(ehci, multi);

		/* usbfs wants to report the average usecs per frame tied up
		 * when transfers on this endpoint are scheduled ...
		 */
		stream->usecs = FUNC0 (maxp);
		bandwidth = stream->usecs * 8;
		bandwidth /= interval;

	} else {
		u32		addr;
		int		think_time;
		int		hs_transfers;

		addr = dev->ttport << 24;
		if (!FUNC3(ehci)
				|| (dev->tt->hub !=
					FUNC4(ehci)->self.root_hub))
			addr |= dev->tt->hub->devnum << 16;
		addr |= epnum << 8;
		addr |= dev->devnum;
		stream->usecs = FUNC0 (maxp);
		think_time = dev->tt ? dev->tt->think_time : 0;
		stream->tt_usecs = FUNC1 (think_time + FUNC8 (
				dev->speed, is_input, 1, maxp));
		hs_transfers = FUNC6 (1u, (maxp + 187) / 188);
		if (is_input) {
			u32	tmp;

			addr |= 1 << 31;
			stream->c_usecs = stream->usecs;
			stream->usecs = FUNC0 (1);
			stream->raw_mask = 1;

			/* c-mask as specified in USB 2.0 11.18.4 3.c */
			tmp = (1 << (hs_transfers + 2)) - 1;
			stream->raw_mask |= tmp << (8 + 2);
		} else
			stream->raw_mask = smask_out [hs_transfers - 1];
		bandwidth = stream->usecs + stream->c_usecs;
		bandwidth /= interval << 3;

		/* stream->splits gets created from raw_mask later */
		stream->address = FUNC2(ehci, addr);
	}
	stream->bandwidth = bandwidth;

	stream->udev = dev;

	stream->bEndpointAddress = is_input | epnum;
	stream->interval = interval;
	stream->maxp = maxp;
}