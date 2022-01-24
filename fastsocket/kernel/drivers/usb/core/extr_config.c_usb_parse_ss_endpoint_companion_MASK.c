#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct usb_ss_ep_comp_descriptor {scalar_t__ bDescriptorType; int bMaxBurst; int bmAttributes; int /*<<< orphan*/  wBytesPerInterval; scalar_t__ bLength; } ;
struct TYPE_7__ {int /*<<< orphan*/  bEndpointAddress; int /*<<< orphan*/  wMaxPacketSize; } ;
struct usb_host_endpoint {TYPE_2__ desc; TYPE_1__* ss_ep_comp; } ;
struct device {int dummy; } ;
struct TYPE_6__ {unsigned char* extra; int extralen; struct usb_ss_ep_comp_descriptor desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_DT_ENDPOINT ; 
 int /*<<< orphan*/  USB_DT_INTERFACE ; 
 scalar_t__ USB_DT_SS_ENDPOINT_COMP ; 
 int /*<<< orphan*/  USB_DT_SS_EP_COMP_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int FUNC3 (unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_ss_ep_comp_descriptor*,struct usb_ss_ep_comp_descriptor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC11(struct device *ddev, int cfgno,
		int inum, int asnum, struct usb_host_endpoint *ep,
		int num_ep, unsigned char *buffer, int size)
{
	unsigned char *buffer_start = buffer;
	struct usb_ss_ep_comp_descriptor	*desc;
	int retval;
	int num_skipped;
	int max_tx;
	int i;

	desc = (struct usb_ss_ep_comp_descriptor *) buffer;
	if (desc->bDescriptorType != USB_DT_SS_ENDPOINT_COMP) {
		FUNC2(ddev, "No SuperSpeed endpoint companion for config %d "
				" interface %d altsetting %d ep %d: "
				"using minimum values\n",
				cfgno, inum, asnum, ep->desc.bEndpointAddress);
		/*
		 * The next descriptor is for an Endpoint or Interface,
		 * no extra descriptors to copy into the companion structure,
		 * and we didn't eat up any of the buffer.
		 */
		return 0;
	}
	FUNC5(&ep->ss_ep_comp->desc, desc, USB_DT_SS_EP_COMP_SIZE);
	desc = &ep->ss_ep_comp->desc;
	buffer += desc->bLength;
	size -= desc->bLength;

	/* Eat up the other descriptors we don't care about */
	ep->ss_ep_comp->extra = buffer;
	i = FUNC3(buffer, size, USB_DT_ENDPOINT,
			USB_DT_INTERFACE, &num_skipped);
	ep->ss_ep_comp->extralen = i;
	buffer += i;
	size -= i;
	retval = buffer - buffer_start;
	if (num_skipped > 0)
		FUNC1(ddev, "skipped %d descriptor%s after %s\n",
				num_skipped, FUNC6(num_skipped),
				"SuperSpeed endpoint companion");

	/* Check the various values */
	if (FUNC8(&ep->desc) && desc->bMaxBurst != 0) {
		FUNC2(ddev, "Control endpoint with bMaxBurst = %d in "
				"config %d interface %d altsetting %d ep %d: "
				"setting to zero\n", desc->bMaxBurst,
				cfgno, inum, asnum, ep->desc.bEndpointAddress);
		desc->bMaxBurst = 0;
	}
	if (desc->bMaxBurst > 15) {
		FUNC2(ddev, "Endpoint with bMaxBurst = %d in "
				"config %d interface %d altsetting %d ep %d: "
				"setting to 15\n", desc->bMaxBurst,
				cfgno, inum, asnum, ep->desc.bEndpointAddress);
		desc->bMaxBurst = 15;
	}
	if ((FUNC8(&ep->desc) || FUNC9(&ep->desc))
			&& desc->bmAttributes != 0) {
		FUNC2(ddev, "%s endpoint with bmAttributes = %d in "
				"config %d interface %d altsetting %d ep %d: "
				"setting to zero\n",
				FUNC8(&ep->desc) ? "Control" : "Bulk",
				desc->bmAttributes,
				cfgno, inum, asnum, ep->desc.bEndpointAddress);
		desc->bmAttributes = 0;
	}
	if (FUNC7(&ep->desc) && desc->bmAttributes > 16) {
		FUNC2(ddev, "Bulk endpoint with more than 65536 streams in "
				"config %d interface %d altsetting %d ep %d: "
				"setting to max\n",
				cfgno, inum, asnum, ep->desc.bEndpointAddress);
		desc->bmAttributes = 16;
	}
	if (FUNC10(&ep->desc) && desc->bmAttributes > 2) {
		FUNC2(ddev, "Isoc endpoint has Mult of %d in "
				"config %d interface %d altsetting %d ep %d: "
				"setting to 3\n", desc->bmAttributes + 1,
				cfgno, inum, asnum, ep->desc.bEndpointAddress);
		desc->bmAttributes = 2;
	}
	if (FUNC10(&ep->desc)) {
		max_tx = (desc->bMaxBurst + 1) * (desc->bmAttributes + 1) *
			FUNC4(ep->desc.wMaxPacketSize);
	} else if (FUNC9(&ep->desc)) {
		max_tx = FUNC4(ep->desc.wMaxPacketSize) *
			(desc->bMaxBurst + 1);
	} else {
		goto valid;
	}
	if (FUNC4(desc->wBytesPerInterval) > max_tx) {
		FUNC2(ddev, "%s endpoint with wBytesPerInterval of %d in "
				"config %d interface %d altsetting %d ep %d: "
				"setting to %d\n",
				FUNC10(&ep->desc) ? "Isoc" : "Int",
				FUNC4(desc->wBytesPerInterval),
				cfgno, inum, asnum, ep->desc.bEndpointAddress,
				max_tx);
		desc->wBytesPerInterval = FUNC0(max_tx);
	}
valid:
	return retval;
}