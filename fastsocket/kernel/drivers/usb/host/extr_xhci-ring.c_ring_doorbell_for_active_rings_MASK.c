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
struct xhci_virt_ep {int ep_state; struct xhci_stream_info* stream_info; TYPE_1__* ring; } ;
struct xhci_stream_info {unsigned int num_streams; TYPE_2__** stream_rings; } ;
struct xhci_hcd {TYPE_3__** devs; } ;
struct TYPE_6__ {struct xhci_virt_ep* eps; } ;
struct TYPE_5__ {int /*<<< orphan*/  td_list; } ;
struct TYPE_4__ {int /*<<< orphan*/  td_list; } ;

/* Variables and functions */
 int EP_HAS_STREAMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_hcd*,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct xhci_hcd *xhci,
		unsigned int slot_id,
		unsigned int ep_index)
{
	unsigned int stream_id;
	struct xhci_virt_ep *ep;

	ep = &xhci->devs[slot_id]->eps[ep_index];

	/* A ring has pending URBs if its TD list is not empty */
	if (!(ep->ep_state & EP_HAS_STREAMS)) {
		if (!(FUNC0(&ep->ring->td_list)))
			FUNC1(xhci, slot_id, ep_index, 0);
		return;
	}

	for (stream_id = 1; stream_id < ep->stream_info->num_streams;
			stream_id++) {
		struct xhci_stream_info *stream_info = ep->stream_info;
		if (!FUNC0(&stream_info->stream_rings[stream_id]->td_list))
			FUNC1(xhci, slot_id, ep_index,
						stream_id);
	}
}