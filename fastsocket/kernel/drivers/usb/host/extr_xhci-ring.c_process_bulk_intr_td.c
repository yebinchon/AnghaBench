
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int * field; } ;
union xhci_trb {TYPE_4__ generic; } ;
typedef int u32 ;
struct xhci_virt_ep {int dummy; } ;
struct xhci_transfer_event {int transfer_len; int buffer; } ;
struct xhci_td {TYPE_3__* urb; union xhci_trb* last_trb; } ;
struct xhci_segment {int dummy; } ;
struct xhci_ring {struct xhci_segment* deq_seg; union xhci_trb* dequeue; } ;
struct xhci_hcd {int quirks; } ;
struct TYPE_7__ {int transfer_flags; scalar_t__ transfer_buffer_length; scalar_t__ actual_length; TYPE_2__* ep; } ;
struct TYPE_5__ {int bEndpointAddress; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;



 int COMP_STOP_INVAL ;

 int EINPROGRESS ;
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
 int xhci_dbg (struct xhci_hcd*,char*,int ,scalar_t__,scalar_t__) ;
 struct xhci_ring* xhci_dma_to_transfer_ring (struct xhci_virt_ep*,int ) ;
 int xhci_warn (struct xhci_hcd*,char*,...) ;

__attribute__((used)) static int process_bulk_intr_td(struct xhci_hcd *xhci, struct xhci_td *td,
 union xhci_trb *event_trb, struct xhci_transfer_event *event,
 struct xhci_virt_ep *ep, int *status)
{
 struct xhci_ring *ep_ring;
 union xhci_trb *cur_trb;
 struct xhci_segment *cur_seg;
 u32 trb_comp_code;

 ep_ring = xhci_dma_to_transfer_ring(ep, le64_to_cpu(event->buffer));
 trb_comp_code = GET_COMP_CODE(le32_to_cpu(event->transfer_len));

 switch (trb_comp_code) {
 case 128:

  if (event_trb != td->last_trb ||
      EVENT_TRB_LEN(le32_to_cpu(event->transfer_len)) != 0) {
   xhci_warn(xhci, "WARN Successful completion "
     "on short TX\n");
   if (td->urb->transfer_flags & URB_SHORT_NOT_OK)
    *status = -EREMOTEIO;
   else
    *status = 0;
   if ((xhci->quirks & XHCI_TRUST_TX_LENGTH))
    trb_comp_code = 129;
  } else {
   *status = 0;
  }
  break;
 case 129:
  if (td->urb->transfer_flags & URB_SHORT_NOT_OK)
   *status = -EREMOTEIO;
  else
   *status = 0;
  break;
 default:

  break;
 }
 if (trb_comp_code == 129)
  xhci_dbg(xhci, "ep %#x - asked for %d bytes, "
    "%d bytes untransferred\n",
    td->urb->ep->desc.bEndpointAddress,
    td->urb->transfer_buffer_length,
    EVENT_TRB_LEN(le32_to_cpu(event->transfer_len)));

 if (event_trb == td->last_trb) {
  if (EVENT_TRB_LEN(le32_to_cpu(event->transfer_len)) != 0) {
   td->urb->actual_length =
    td->urb->transfer_buffer_length -
    EVENT_TRB_LEN(le32_to_cpu(event->transfer_len));
   if (td->urb->transfer_buffer_length <
     td->urb->actual_length) {
    xhci_warn(xhci, "HC gave bad length "
      "of %d bytes left\n",
       EVENT_TRB_LEN(le32_to_cpu(event->transfer_len)));
    td->urb->actual_length = 0;
    if (td->urb->transfer_flags & URB_SHORT_NOT_OK)
     *status = -EREMOTEIO;
    else
     *status = 0;
   }

   if (*status == -EINPROGRESS) {
    if (td->urb->transfer_flags & URB_SHORT_NOT_OK)
     *status = -EREMOTEIO;
    else
     *status = 0;
   }
  } else {
   td->urb->actual_length =
    td->urb->transfer_buffer_length;



   if (*status == -EREMOTEIO)
    *status = 0;
  }
 } else {



  td->urb->actual_length = 0;
  for (cur_trb = ep_ring->dequeue, cur_seg = ep_ring->deq_seg;
    cur_trb != event_trb;
    next_trb(xhci, ep_ring, &cur_seg, &cur_trb)) {
   if (!TRB_TYPE_NOOP_LE32(cur_trb->generic.field[3]) &&
       !TRB_TYPE_LINK_LE32(cur_trb->generic.field[3]))
    td->urb->actual_length +=
     TRB_LEN(le32_to_cpu(cur_trb->generic.field[2]));
  }



  if (trb_comp_code != COMP_STOP_INVAL)
   td->urb->actual_length +=
    TRB_LEN(le32_to_cpu(cur_trb->generic.field[2])) -
    EVENT_TRB_LEN(le32_to_cpu(event->transfer_len));
 }

 return finish_td(xhci, td, event_trb, event, ep, status, 0);
}
