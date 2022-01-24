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
struct usb_host_endpoint {struct ehci_iso_stream* hcpriv; } ;
struct urb {int /*<<< orphan*/  pipe; TYPE_1__* dev; int /*<<< orphan*/  interval; } ;
struct ehci_iso_stream {int /*<<< orphan*/ * hw; struct usb_host_endpoint* ep; } ;
struct ehci_hcd {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  devpath; struct usb_host_endpoint** ep_out; struct usb_host_endpoint** ep_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct ehci_hcd*,char*,int /*<<< orphan*/ ,unsigned int,char*) ; 
 struct ehci_iso_stream* FUNC1 (int /*<<< orphan*/ ) ; 
 struct ehci_iso_stream* FUNC2 (struct ehci_iso_stream*) ; 
 int /*<<< orphan*/  FUNC3 (struct ehci_hcd*,struct ehci_iso_stream*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ehci_iso_stream *
FUNC10 (struct ehci_hcd *ehci, struct urb *urb)
{
	unsigned		epnum;
	struct ehci_iso_stream	*stream;
	struct usb_host_endpoint *ep;
	unsigned long		flags;

	epnum = FUNC8 (urb->pipe);
	if (FUNC9(urb->pipe))
		ep = urb->dev->ep_in[epnum];
	else
		ep = urb->dev->ep_out[epnum];

	FUNC5 (&ehci->lock, flags);
	stream = ep->hcpriv;

	if (FUNC7 (stream == NULL)) {
		stream = FUNC1(GFP_ATOMIC);
		if (FUNC4 (stream != NULL)) {
			/* dev->ep owns the initial refcount */
			ep->hcpriv = stream;
			stream->ep = ep;
			FUNC3(ehci, stream, urb->dev, urb->pipe,
					urb->interval);
		}

	/* if dev->ep [epnum] is a QH, hw is set */
	} else if (FUNC7 (stream->hw != NULL)) {
		FUNC0 (ehci, "dev %s ep%d%s, not iso??\n",
			urb->dev->devpath, epnum,
			FUNC9(urb->pipe) ? "in" : "out");
		stream = NULL;
	}

	/* caller guarantees an eventual matching iso_stream_put */
	stream = FUNC2 (stream);

	FUNC6 (&ehci->lock, flags);
	return stream;
}