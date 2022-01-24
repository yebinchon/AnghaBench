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
struct usb_host_ss_ep_comp {int dummy; } ;
struct TYPE_5__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_1__ desc; struct usb_host_endpoint* endpoint; } ;
struct usb_endpoint_descriptor {int bLength; int bEndpointAddress; int bInterval; int /*<<< orphan*/  wMaxPacketSize; int /*<<< orphan*/  bmAttributes; } ;
struct usb_host_endpoint {unsigned char* extra; int extralen; struct usb_endpoint_descriptor desc; TYPE_4__* ss_ep_comp; int /*<<< orphan*/  urb_list; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  wBytesPerInterval; scalar_t__ bMaxBurst; int /*<<< orphan*/  bDescriptorType; int /*<<< orphan*/  bLength; } ;
struct TYPE_8__ {TYPE_2__ desc; } ;
struct TYPE_7__ {int speed; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  USB_DT_ENDPOINT ; 
 int USB_DT_ENDPOINT_AUDIO_SIZE ; 
 int USB_DT_ENDPOINT_SIZE ; 
 int /*<<< orphan*/  USB_DT_INTERFACE ; 
 int /*<<< orphan*/  USB_DT_SS_ENDPOINT_COMP ; 
 int /*<<< orphan*/  USB_DT_SS_EP_COMP_SIZE ; 
 int USB_ENDPOINT_DIR_MASK ; 
 int /*<<< orphan*/  USB_ENDPOINT_XFER_INT ; 
#define  USB_SPEED_HIGH 129 
 int USB_SPEED_LOW ; 
#define  USB_SPEED_SUPER 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int,int,int,int,...) ; 
 int FUNC4 (unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (int) ; 
 TYPE_4__* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_endpoint_descriptor*,struct usb_endpoint_descriptor*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 TYPE_3__* FUNC11 (struct device*) ; 
 scalar_t__ FUNC12 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC13 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC14 (struct usb_endpoint_descriptor*) ; 
 int FUNC15 (struct device*,int,int,int,struct usb_host_endpoint*,int,unsigned char*,int) ; 

__attribute__((used)) static int FUNC16(struct device *ddev, int cfgno, int inum,
    int asnum, struct usb_host_interface *ifp, int num_ep,
    unsigned char *buffer, int size)
{
	unsigned char *buffer0 = buffer;
	struct usb_endpoint_descriptor *d;
	struct usb_host_endpoint *endpoint;
	int n, i, j, retval;

	d = (struct usb_endpoint_descriptor *) buffer;
	buffer += d->bLength;
	size -= d->bLength;

	if (d->bLength >= USB_DT_ENDPOINT_AUDIO_SIZE)
		n = USB_DT_ENDPOINT_AUDIO_SIZE;
	else if (d->bLength >= USB_DT_ENDPOINT_SIZE)
		n = USB_DT_ENDPOINT_SIZE;
	else {
		FUNC3(ddev, "config %d interface %d altsetting %d has an "
		    "invalid endpoint descriptor of length %d, skipping\n",
		    cfgno, inum, asnum, d->bLength);
		goto skip_to_next_endpoint_or_interface_descriptor;
	}

	i = d->bEndpointAddress & ~USB_ENDPOINT_DIR_MASK;
	if (i >= 16 || i == 0) {
		FUNC3(ddev, "config %d interface %d altsetting %d has an "
		    "invalid endpoint with address 0x%X, skipping\n",
		    cfgno, inum, asnum, d->bEndpointAddress);
		goto skip_to_next_endpoint_or_interface_descriptor;
	}

	/* Only store as many endpoints as we have room for */
	if (ifp->desc.bNumEndpoints >= num_ep)
		goto skip_to_next_endpoint_or_interface_descriptor;

	endpoint = &ifp->endpoint[ifp->desc.bNumEndpoints];
	++ifp->desc.bNumEndpoints;

	FUNC9(&endpoint->desc, d, n);
	FUNC0(&endpoint->urb_list);

	/* Fix up bInterval values outside the legal range. Use 32 ms if no
	 * proper value can be guessed. */
	i = 0;		/* i = min, j = max, n = default */
	j = 255;
	if (FUNC13(d)) {
		i = 1;
		switch (FUNC11(ddev)->speed) {
		case USB_SPEED_SUPER:
		case USB_SPEED_HIGH:
			/* Many device manufacturers are using full-speed
			 * bInterval values in high-speed interrupt endpoint
			 * descriptors. Try to fix those and fall back to a
			 * 32 ms default value otherwise. */
			n = FUNC6(d->bInterval*8);
			if (n == 0)
				n = 9;	/* 32 ms = 2^(9-1) uframes */
			j = 16;
			break;
		default:		/* USB_SPEED_FULL or _LOW */
			/* For low-speed, 10 ms is the official minimum.
			 * But some "overclocked" devices might want faster
			 * polling so we'll allow it. */
			n = 32;
			break;
		}
	} else if (FUNC14(d)) {
		i = 1;
		j = 16;
		switch (FUNC11(ddev)->speed) {
		case USB_SPEED_HIGH:
			n = 9;		/* 32 ms = 2^(9-1) uframes */
			break;
		default:		/* USB_SPEED_FULL */
			n = 6;		/* 32 ms = 2^(6-1) frames */
			break;
		}
	}
	if (d->bInterval < i || d->bInterval > j) {
		FUNC3(ddev, "config %d interface %d altsetting %d "
		    "endpoint 0x%X has an invalid bInterval %d, "
		    "changing to %d\n",
		    cfgno, inum, asnum,
		    d->bEndpointAddress, d->bInterval, n);
		endpoint->desc.bInterval = n;
	}

	/* Some buggy low-speed devices have Bulk endpoints, which is
	 * explicitly forbidden by the USB spec.  In an attempt to make
	 * them usable, we will try treating them as Interrupt endpoints.
	 */
	if (FUNC11(ddev)->speed == USB_SPEED_LOW &&
			FUNC12(d)) {
		FUNC3(ddev, "config %d interface %d altsetting %d "
		    "endpoint 0x%X is Bulk; changing to Interrupt\n",
		    cfgno, inum, asnum, d->bEndpointAddress);
		endpoint->desc.bmAttributes = USB_ENDPOINT_XFER_INT;
		endpoint->desc.bInterval = 1;
		if (FUNC8(endpoint->desc.wMaxPacketSize) > 8)
			endpoint->desc.wMaxPacketSize = FUNC1(8);
	}

	/*
	 * Some buggy high speed devices have bulk endpoints using
	 * maxpacket sizes other than 512.  High speed HCDs may not
	 * be able to handle that particular bug, so let's warn...
	 */
	if (FUNC11(ddev)->speed == USB_SPEED_HIGH
			&& FUNC12(d)) {
		unsigned maxp;

		maxp = FUNC8(endpoint->desc.wMaxPacketSize) & 0x07ff;
		if (maxp != 512)
			FUNC3(ddev, "config %d interface %d altsetting %d "
				"bulk endpoint 0x%X has invalid maxpacket %d\n",
				cfgno, inum, asnum, d->bEndpointAddress,
				maxp);
	}
	/* Allocate room for and parse any SS endpoint companion descriptors */
	if (FUNC11(ddev)->speed == USB_SPEED_SUPER) {
		endpoint->extra = buffer;
		i = FUNC5(buffer, size, USB_DT_SS_ENDPOINT_COMP,
				USB_DT_ENDPOINT, USB_DT_INTERFACE, &n);
		endpoint->extralen = i;
		buffer += i;
		size -= i;

		/* Allocate space for the SS endpoint companion descriptor */
		endpoint->ss_ep_comp = FUNC7(sizeof(struct usb_host_ss_ep_comp),
				GFP_KERNEL);
		if (!endpoint->ss_ep_comp)
			return -ENOMEM;

		/* Fill in some default values (may be overwritten later) */
		endpoint->ss_ep_comp->desc.bLength = USB_DT_SS_EP_COMP_SIZE;
		endpoint->ss_ep_comp->desc.bDescriptorType = USB_DT_SS_ENDPOINT_COMP;
		endpoint->ss_ep_comp->desc.bMaxBurst = 0;
		/*
		 * Leave bmAttributes as zero, which will mean no streams for
		 * bulk, and isoc won't support multiple bursts of packets.
		 * With bursts of only one packet, and a Mult of 1, the max
		 * amount of data moved per endpoint service interval is one
		 * packet.
		 */
		if (FUNC14(&endpoint->desc) ||
				FUNC13(&endpoint->desc))
			endpoint->ss_ep_comp->desc.wBytesPerInterval =
				endpoint->desc.wMaxPacketSize;

		if (size > 0) {
			retval = FUNC15(ddev, cfgno,
					inum, asnum, endpoint, num_ep, buffer,
					size);
			if (retval >= 0) {
				buffer += retval;
				retval = buffer - buffer0;
			}
		} else {
			FUNC3(ddev, "config %d interface %d altsetting %d "
				"endpoint 0x%X has no "
				"SuperSpeed companion descriptor\n",
				cfgno, inum, asnum, d->bEndpointAddress);
			retval = buffer - buffer0;
		}
	} else {
		/* Skip over any Class Specific or Vendor Specific descriptors;
		 * find the next endpoint or interface descriptor */
		endpoint->extra = buffer;
		i = FUNC4(buffer, size, USB_DT_ENDPOINT,
				USB_DT_INTERFACE, &n);
		endpoint->extralen = i;
		retval = buffer - buffer0 + i;
	}
	if (n > 0)
		FUNC2(ddev, "skipped %d descriptor%s after %s\n",
		    n, FUNC10(n), "endpoint");
	return retval;

skip_to_next_endpoint_or_interface_descriptor:
	i = FUNC4(buffer, size, USB_DT_ENDPOINT,
	    USB_DT_INTERFACE, NULL);
	return buffer - buffer0 + i;
}