#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * field; } ;
union xhci_trb {TYPE_1__ generic; } ;
typedef  int u32 ;
struct xhci_virt_ep {int dummy; } ;
struct xhci_transfer_event {int /*<<< orphan*/  transfer_len; int /*<<< orphan*/  buffer; } ;
struct xhci_td {TYPE_2__* urb; } ;
struct xhci_segment {int dummy; } ;
struct xhci_ring {struct xhci_segment* deq_seg; union xhci_trb* dequeue; } ;
struct xhci_hcd {int quirks; } ;
struct usb_iso_packet_descriptor {int status; int actual_length; int length; } ;
struct urb_priv {int td_cnt; } ;
struct TYPE_4__ {int transfer_flags; int actual_length; struct usb_iso_packet_descriptor* iso_frame_desc; struct urb_priv* hcpriv; } ;

/* Variables and functions */
#define  COMP_BABBLE 137 
#define  COMP_BUFF_OVER 136 
#define  COMP_BW_OVER 135 
#define  COMP_DEV_ERR 134 
#define  COMP_SHORT_TX 133 
#define  COMP_STALL 132 
#define  COMP_STOP 131 
#define  COMP_STOP_INVAL 130 
#define  COMP_SUCCESS 129 
#define  COMP_TX_ERR 128 
 int ECOMM ; 
 int EOVERFLOW ; 
 int EPROTO ; 
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
 struct xhci_ring* FUNC9 (struct xhci_virt_ep*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct xhci_hcd *xhci, struct xhci_td *td,
	union xhci_trb *event_trb, struct xhci_transfer_event *event,
	struct xhci_virt_ep *ep, int *status)
{
	struct xhci_ring *ep_ring;
	struct urb_priv *urb_priv;
	int idx;
	int len = 0;
	union xhci_trb *cur_trb;
	struct xhci_segment *cur_seg;
	struct usb_iso_packet_descriptor *frame;
	u32 trb_comp_code;
	bool skip_td = false;

	ep_ring = FUNC9(ep, FUNC7(event->buffer));
	trb_comp_code = FUNC1(FUNC6(event->transfer_len));
	urb_priv = td->urb->hcpriv;
	idx = urb_priv->td_cnt;
	frame = &td->urb->iso_frame_desc[idx];

	/* handle completion code */
	switch (trb_comp_code) {
	case COMP_SUCCESS:
		if (FUNC0(FUNC6(event->transfer_len)) == 0) {
			frame->status = 0;
			break;
		}
		if ((xhci->quirks & XHCI_TRUST_TX_LENGTH))
			trb_comp_code = COMP_SHORT_TX;
	case COMP_SHORT_TX:
		frame->status = td->urb->transfer_flags & URB_SHORT_NOT_OK ?
				-EREMOTEIO : 0;
		break;
	case COMP_BW_OVER:
		frame->status = -ECOMM;
		skip_td = true;
		break;
	case COMP_BUFF_OVER:
	case COMP_BABBLE:
		frame->status = -EOVERFLOW;
		skip_td = true;
		break;
	case COMP_DEV_ERR:
	case COMP_STALL:
	case COMP_TX_ERR:
		frame->status = -EPROTO;
		skip_td = true;
		break;
	case COMP_STOP:
	case COMP_STOP_INVAL:
		break;
	default:
		frame->status = -1;
		break;
	}

	if (trb_comp_code == COMP_SUCCESS || skip_td) {
		frame->actual_length = frame->length;
		td->urb->actual_length += frame->length;
	} else {
		for (cur_trb = ep_ring->dequeue,
		     cur_seg = ep_ring->deq_seg; cur_trb != event_trb;
		     FUNC8(xhci, ep_ring, &cur_seg, &cur_trb)) {
			if (!FUNC4(cur_trb->generic.field[3]) &&
			    !FUNC3(cur_trb->generic.field[3]))
				len += FUNC2(FUNC6(cur_trb->generic.field[2]));
		}
		len += FUNC2(FUNC6(cur_trb->generic.field[2])) -
			FUNC0(FUNC6(event->transfer_len));

		if (trb_comp_code != COMP_STOP_INVAL) {
			frame->actual_length = len;
			td->urb->actual_length += len;
		}
	}

	return FUNC5(xhci, td, event_trb, event, ep, status, false);
}