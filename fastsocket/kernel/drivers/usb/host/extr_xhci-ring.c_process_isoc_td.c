
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * field; } ;
union xhci_trb {TYPE_1__ generic; } ;
typedef int u32 ;
struct xhci_virt_ep {int dummy; } ;
struct xhci_transfer_event {int transfer_len; int buffer; } ;
struct xhci_td {TYPE_2__* urb; } ;
struct xhci_segment {int dummy; } ;
struct xhci_ring {struct xhci_segment* deq_seg; union xhci_trb* dequeue; } ;
struct xhci_hcd {int quirks; } ;
struct usb_iso_packet_descriptor {int status; int actual_length; int length; } ;
struct urb_priv {int td_cnt; } ;
struct TYPE_4__ {int transfer_flags; int actual_length; struct usb_iso_packet_descriptor* iso_frame_desc; struct urb_priv* hcpriv; } ;
 int ECOMM ;
 int EOVERFLOW ;
 int EPROTO ;
 int EREMOTEIO ;
 scalar_t__ EVENT_TRB_LEN (int ) ;
 int GET_COMP_CODE (int ) ;
 scalar_t__ TRB_LEN (int ) ;
 int TRB_TYPE_LINK_LE32 (int ) ;
 int TRB_TYPE_NOOP_LE32 (int ) ;
 int URB_SHORT_NOT_OK ;
 int XHCI_TRUST_TX_LENGTH ;
 int finish_td (struct xhci_hcd*,struct xhci_td*,union xhci_trb*,struct xhci_transfer_event*,struct xhci_virt_ep*,int*,int) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int next_trb (struct xhci_hcd*,struct xhci_ring*,struct xhci_segment**,union xhci_trb**) ;
 struct xhci_ring* xhci_dma_to_transfer_ring (struct xhci_virt_ep*,int ) ;

__attribute__((used)) static int process_isoc_td(struct xhci_hcd *xhci, struct xhci_td *td,
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
 bool skip_td = 0;

 ep_ring = xhci_dma_to_transfer_ring(ep, le64_to_cpu(event->buffer));
 trb_comp_code = GET_COMP_CODE(le32_to_cpu(event->transfer_len));
 urb_priv = td->urb->hcpriv;
 idx = urb_priv->td_cnt;
 frame = &td->urb->iso_frame_desc[idx];


 switch (trb_comp_code) {
 case 129:
  if (EVENT_TRB_LEN(le32_to_cpu(event->transfer_len)) == 0) {
   frame->status = 0;
   break;
  }
  if ((xhci->quirks & XHCI_TRUST_TX_LENGTH))
   trb_comp_code = 133;
 case 133:
  frame->status = td->urb->transfer_flags & URB_SHORT_NOT_OK ?
    -EREMOTEIO : 0;
  break;
 case 135:
  frame->status = -ECOMM;
  skip_td = 1;
  break;
 case 136:
 case 137:
  frame->status = -EOVERFLOW;
  skip_td = 1;
  break;
 case 134:
 case 132:
 case 128:
  frame->status = -EPROTO;
  skip_td = 1;
  break;
 case 131:
 case 130:
  break;
 default:
  frame->status = -1;
  break;
 }

 if (trb_comp_code == 129 || skip_td) {
  frame->actual_length = frame->length;
  td->urb->actual_length += frame->length;
 } else {
  for (cur_trb = ep_ring->dequeue,
       cur_seg = ep_ring->deq_seg; cur_trb != event_trb;
       next_trb(xhci, ep_ring, &cur_seg, &cur_trb)) {
   if (!TRB_TYPE_NOOP_LE32(cur_trb->generic.field[3]) &&
       !TRB_TYPE_LINK_LE32(cur_trb->generic.field[3]))
    len += TRB_LEN(le32_to_cpu(cur_trb->generic.field[2]));
  }
  len += TRB_LEN(le32_to_cpu(cur_trb->generic.field[2])) -
   EVENT_TRB_LEN(le32_to_cpu(event->transfer_len));

  if (trb_comp_code != 130) {
   frame->actual_length = len;
   td->urb->actual_length += len;
  }
 }

 return finish_td(xhci, td, event_trb, event, ep, status, 0);
}
