#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct usb_iso_packet_descriptor {scalar_t__ actual_length; scalar_t__ length; int /*<<< orphan*/  status; } ;
struct usb_device {int /*<<< orphan*/  devpath; } ;
struct urb {int number_of_packets; struct usb_device* dev; int /*<<< orphan*/  actual_length; int /*<<< orphan*/  pipe; int /*<<< orphan*/  error_count; struct usb_iso_packet_descriptor* iso_frame_desc; } ;
struct ehci_sitd {int index; scalar_t__ frame; int /*<<< orphan*/  sitd_list; struct ehci_iso_stream* stream; struct urb* urb; int /*<<< orphan*/  hw_results; } ;
struct ehci_iso_stream {int depth; int interval; int bEndpointAddress; int refcount; TYPE_2__* ep; int /*<<< orphan*/  free_list; scalar_t__ bandwidth; int /*<<< orphan*/  td_list; } ;
struct ehci_hcd {int amd_pll_fix; scalar_t__ clock_frame; int /*<<< orphan*/  cached_sitd_list; } ;
struct TYPE_4__ {scalar_t__ bandwidth_isoc_reqs; int /*<<< orphan*/  bandwidth_allocated; } ;
struct TYPE_6__ {TYPE_1__ self; } ;
struct TYPE_5__ {int /*<<< orphan*/ * hcpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECOMM ; 
 int /*<<< orphan*/  ENOSR ; 
 int /*<<< orphan*/  EOVERFLOW ; 
 int /*<<< orphan*/  EPROTO ; 
 int SITD_ERRS ; 
 scalar_t__ FUNC0 (int) ; 
 int SITD_STS_BABBLE ; 
 int SITD_STS_DBE ; 
 int USB_DIR_IN ; 
 int /*<<< orphan*/  FUNC1 (struct ehci_hcd*) ; 
 TYPE_3__* FUNC2 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct ehci_hcd*,struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ehci_hcd*,char*,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC5 (struct ehci_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ehci_hcd*,struct ehci_iso_stream*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned
FUNC11 (
	struct ehci_hcd		*ehci,
	struct ehci_sitd	*sitd
) {
	struct urb				*urb = sitd->urb;
	struct usb_iso_packet_descriptor	*desc;
	u32					t;
	int					urb_index = -1;
	struct ehci_iso_stream			*stream = sitd->stream;
	struct usb_device			*dev;
	unsigned				retval = false;

	urb_index = sitd->index;
	desc = &urb->iso_frame_desc [urb_index];
	t = FUNC5(ehci, &sitd->hw_results);

	/* report transfer status */
	if (t & SITD_ERRS) {
		urb->error_count++;
		if (t & SITD_STS_DBE)
			desc->status = FUNC10 (urb->pipe)
				? -ENOSR  /* hc couldn't read */
				: -ECOMM; /* hc couldn't write */
		else if (t & SITD_STS_BABBLE)
			desc->status = -EOVERFLOW;
		else /* XACT, MMF, etc */
			desc->status = -EPROTO;
	} else {
		desc->status = 0;
		desc->actual_length = desc->length - FUNC0(t);
		urb->actual_length += desc->actual_length;
	}
	stream->depth -= stream->interval << 3;

	/* handle completion now? */
	if ((urb_index + 1) != urb->number_of_packets)
		goto done;

	/* ASSERT: it's really the last sitd for this urb
	list_for_each_entry (sitd, &stream->td_list, sitd_list)
		BUG_ON (sitd->urb == urb);
	 */

	/* give urb back to the driver; completion often (re)submits */
	dev = urb->dev;
	FUNC3(ehci, urb, 0);
	retval = true;
	urb = NULL;
	(void) FUNC1(ehci);
	FUNC2(ehci)->self.bandwidth_isoc_reqs--;

	if (FUNC2(ehci)->self.bandwidth_isoc_reqs == 0) {
		if (ehci->amd_pll_fix == 1)
			FUNC9();
	}

	if (FUNC7(&stream->td_list)) {
		FUNC2(ehci)->self.bandwidth_allocated
				-= stream->bandwidth;
		FUNC4 (ehci,
			"deschedule devp %s ep%d%s-iso\n",
			dev->devpath, stream->bEndpointAddress & 0x0f,
			(stream->bEndpointAddress & USB_DIR_IN) ? "in" : "out");
	}
	FUNC6 (ehci, stream);

done:
	sitd->urb = NULL;
	if (ehci->clock_frame != sitd->frame) {
		/* OK to recycle this SITD now. */
		sitd->stream = NULL;
		FUNC8(&sitd->sitd_list, &stream->free_list);
		FUNC6(ehci, stream);
	} else {
		/* HW might remember this SITD, so we can't recycle it yet.
		 * Move it to a safe place until a new frame starts.
		 */
		FUNC8(&sitd->sitd_list, &ehci->cached_sitd_list);
		if (stream->refcount == 2) {
			/* If iso_stream_put() were called here, stream
			 * would be freed.  Instead, just prevent reuse.
			 */
			stream->ep->hcpriv = NULL;
			stream->ep = NULL;
		}
	}
	return retval;
}