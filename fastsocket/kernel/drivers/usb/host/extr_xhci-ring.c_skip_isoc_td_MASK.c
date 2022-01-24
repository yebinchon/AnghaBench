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
struct xhci_virt_ep {int dummy; } ;
struct xhci_transfer_event {int /*<<< orphan*/  buffer; } ;
struct xhci_td {scalar_t__ last_trb; TYPE_1__* urb; } ;
struct xhci_ring {scalar_t__ dequeue; } ;
struct xhci_hcd {int dummy; } ;
struct usb_iso_packet_descriptor {scalar_t__ actual_length; int /*<<< orphan*/  status; } ;
struct urb_priv {int td_cnt; } ;
struct TYPE_2__ {struct usb_iso_packet_descriptor* iso_frame_desc; struct urb_priv* hcpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXDEV ; 
 int FUNC0 (struct xhci_hcd*,struct xhci_td*,int /*<<< orphan*/ *,struct xhci_transfer_event*,struct xhci_virt_ep*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_hcd*,struct xhci_ring*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct xhci_ring* FUNC3 (struct xhci_virt_ep*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct xhci_hcd *xhci, struct xhci_td *td,
			struct xhci_transfer_event *event,
			struct xhci_virt_ep *ep, int *status)
{
	struct xhci_ring *ep_ring;
	struct urb_priv *urb_priv;
	struct usb_iso_packet_descriptor *frame;
	int idx;

	ep_ring = FUNC3(ep, FUNC2(event->buffer));
	urb_priv = td->urb->hcpriv;
	idx = urb_priv->td_cnt;
	frame = &td->urb->iso_frame_desc[idx];

	/* The transfer is partly done. */
	frame->status = -EXDEV;

	/* calc actual length */
	frame->actual_length = 0;

	/* Update ring dequeue pointer */
	while (ep_ring->dequeue != td->last_trb)
		FUNC1(xhci, ep_ring);
	FUNC1(xhci, ep_ring);

	return FUNC0(xhci, td, NULL, event, ep, status, true);
}