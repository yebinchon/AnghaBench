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
struct TYPE_8__ {int /*<<< orphan*/ * field; } ;
union xhci_trb {TYPE_4__ generic; } ;
typedef  int u32 ;
struct xhci_virt_ep {int dummy; } ;
struct xhci_transfer_event {int /*<<< orphan*/  transfer_len; int /*<<< orphan*/  buffer; } ;
struct xhci_td {TYPE_3__* urb; union xhci_trb* last_trb; } ;
struct xhci_segment {int dummy; } ;
struct xhci_ring {struct xhci_segment* deq_seg; union xhci_trb* dequeue; } ;
struct xhci_hcd {int quirks; } ;
struct TYPE_7__ {int transfer_flags; scalar_t__ transfer_buffer_length; scalar_t__ actual_length; TYPE_2__* ep; } ;
struct TYPE_5__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;

/* Variables and functions */
#define  COMP_SHORT_TX 129 
 int COMP_STOP_INVAL ; 
#define  COMP_SUCCESS 128 
 int EINPROGRESS ; 
 int EREMOTEIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int URB_SHORT_NOT_OK ; 
 int XHCI_TRUST_TX_LENGTH ; 
 int FUNC5 (struct xhci_hcd*,struct xhci_td*,union xhci_trb*,struct xhci_transfer_event*,struct xhci_virt_ep*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xhci_hcd*,struct xhci_ring*,struct xhci_segment**,union xhci_trb**) ; 
 int /*<<< orphan*/  FUNC9 (struct xhci_hcd*,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct xhci_ring* FUNC10 (struct xhci_virt_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct xhci_hcd*,char*,...) ; 

__attribute__((used)) static int FUNC12(struct xhci_hcd *xhci, struct xhci_td *td,
	union xhci_trb *event_trb, struct xhci_transfer_event *event,
	struct xhci_virt_ep *ep, int *status)
{
	struct xhci_ring *ep_ring;
	union xhci_trb *cur_trb;
	struct xhci_segment *cur_seg;
	u32 trb_comp_code;

	ep_ring = FUNC10(ep, FUNC7(event->buffer));
	trb_comp_code = FUNC1(FUNC6(event->transfer_len));

	switch (trb_comp_code) {
	case COMP_SUCCESS:
		/* Double check that the HW transferred everything. */
		if (event_trb != td->last_trb ||
		    FUNC0(FUNC6(event->transfer_len)) != 0) {
			FUNC11(xhci, "WARN Successful completion "
					"on short TX\n");
			if (td->urb->transfer_flags & URB_SHORT_NOT_OK)
				*status = -EREMOTEIO;
			else
				*status = 0;
			if ((xhci->quirks & XHCI_TRUST_TX_LENGTH))
				trb_comp_code = COMP_SHORT_TX;
		} else {
			*status = 0;
		}
		break;
	case COMP_SHORT_TX:
		if (td->urb->transfer_flags & URB_SHORT_NOT_OK)
			*status = -EREMOTEIO;
		else
			*status = 0;
		break;
	default:
		/* Others already handled above */
		break;
	}
	if (trb_comp_code == COMP_SHORT_TX)
		FUNC9(xhci, "ep %#x - asked for %d bytes, "
				"%d bytes untransferred\n",
				td->urb->ep->desc.bEndpointAddress,
				td->urb->transfer_buffer_length,
				FUNC0(FUNC6(event->transfer_len)));
	/* Fast path - was this the last TRB in the TD for this URB? */
	if (event_trb == td->last_trb) {
		if (FUNC0(FUNC6(event->transfer_len)) != 0) {
			td->urb->actual_length =
				td->urb->transfer_buffer_length -
				FUNC0(FUNC6(event->transfer_len));
			if (td->urb->transfer_buffer_length <
					td->urb->actual_length) {
				FUNC11(xhci, "HC gave bad length "
						"of %d bytes left\n",
					  FUNC0(FUNC6(event->transfer_len)));
				td->urb->actual_length = 0;
				if (td->urb->transfer_flags & URB_SHORT_NOT_OK)
					*status = -EREMOTEIO;
				else
					*status = 0;
			}
			/* Don't overwrite a previously set error code */
			if (*status == -EINPROGRESS) {
				if (td->urb->transfer_flags & URB_SHORT_NOT_OK)
					*status = -EREMOTEIO;
				else
					*status = 0;
			}
		} else {
			td->urb->actual_length =
				td->urb->transfer_buffer_length;
			/* Ignore a short packet completion if the
			 * untransferred length was zero.
			 */
			if (*status == -EREMOTEIO)
				*status = 0;
		}
	} else {
		/* Slow path - walk the list, starting from the dequeue
		 * pointer, to get the actual length transferred.
		 */
		td->urb->actual_length = 0;
		for (cur_trb = ep_ring->dequeue, cur_seg = ep_ring->deq_seg;
				cur_trb != event_trb;
				FUNC8(xhci, ep_ring, &cur_seg, &cur_trb)) {
			if (!FUNC4(cur_trb->generic.field[3]) &&
			    !FUNC3(cur_trb->generic.field[3]))
				td->urb->actual_length +=
					FUNC2(FUNC6(cur_trb->generic.field[2]));
		}
		/* If the ring didn't stop on a Link or No-op TRB, add
		 * in the actual bytes transferred from the Normal TRB
		 */
		if (trb_comp_code != COMP_STOP_INVAL)
			td->urb->actual_length +=
				FUNC2(FUNC6(cur_trb->generic.field[2])) -
				FUNC0(FUNC6(event->transfer_len));
	}

	return FUNC5(xhci, td, event_trb, event, ep, status, false);
}