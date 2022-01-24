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
struct xhci_virt_ep {int ep_state; struct xhci_ring* ring; TYPE_1__* stream_info; } ;
struct xhci_ring {int /*<<< orphan*/  deq_seg; } ;
struct xhci_hcd {int dummy; } ;
struct TYPE_2__ {int num_streams; struct xhci_ring** stream_rings; } ;

/* Variables and functions */
 int EP_HAS_STREAMS ; 
 int /*<<< orphan*/  FUNC0 (struct xhci_hcd*,char*,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_hcd*,int /*<<< orphan*/ ) ; 

void FUNC2(struct xhci_hcd *xhci,
		unsigned int slot_id, unsigned int ep_index,
		struct xhci_virt_ep *ep)
{
	int i;
	struct xhci_ring *ring;

	if (ep->ep_state & EP_HAS_STREAMS) {
		for (i = 1; i < ep->stream_info->num_streams; i++) {
			ring = ep->stream_info->stream_rings[i];
			FUNC0(xhci, "Dev %d endpoint %d stream ID %d:\n",
				slot_id, ep_index, i);
			FUNC1(xhci, ring->deq_seg);
		}
	} else {
		ring = ep->ring;
		if (!ring)
			return;
		FUNC0(xhci, "Dev %d endpoint ring %d:\n",
				slot_id, ep_index);
		FUNC1(xhci, ring->deq_seg);
	}
}