
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union xhci_trb {int dummy; } xhci_trb ;
typedef int u32 ;
struct xhci_virt_ep {int dummy; } ;
struct xhci_virt_device {int out_ctx; } ;
struct xhci_transfer_event {int transfer_len; int buffer; int flags; } ;
struct xhci_td {TYPE_1__* urb; union xhci_trb* last_trb; } ;
struct xhci_ring {union xhci_trb* dequeue; } ;
struct xhci_hcd {struct xhci_virt_device** devs; } ;
struct xhci_ep_ctx {int dummy; } ;
struct TYPE_2__ {int transfer_flags; scalar_t__ actual_length; void* transfer_buffer_length; } ;







 int EINPROGRESS ;
 int EREMOTEIO ;
 int ESHUTDOWN ;
 void* EVENT_TRB_LEN (int ) ;
 int GET_COMP_CODE (int ) ;
 int TRB_TO_EP_ID (int ) ;
 unsigned int TRB_TO_SLOT_ID (int ) ;
 int URB_SHORT_NOT_OK ;
 int finish_td (struct xhci_hcd*,struct xhci_td*,union xhci_trb*,struct xhci_transfer_event*,struct xhci_virt_ep*,int*,int) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int xhci_cleanup_halted_endpoint (struct xhci_hcd*,unsigned int,int,int ,struct xhci_td*,union xhci_trb*) ;
 int xhci_dbg (struct xhci_hcd*,char*,...) ;
 struct xhci_ring* xhci_dma_to_transfer_ring (struct xhci_virt_ep*,int ) ;
 struct xhci_ep_ctx* xhci_get_ep_ctx (struct xhci_hcd*,int ,int) ;
 int xhci_requires_manual_halt_cleanup (struct xhci_hcd*,struct xhci_ep_ctx*,int) ;
 int xhci_warn (struct xhci_hcd*,char*) ;

__attribute__((used)) static int process_ctrl_td(struct xhci_hcd *xhci, struct xhci_td *td,
 union xhci_trb *event_trb, struct xhci_transfer_event *event,
 struct xhci_virt_ep *ep, int *status)
{
 struct xhci_virt_device *xdev;
 struct xhci_ring *ep_ring;
 unsigned int slot_id;
 int ep_index;
 struct xhci_ep_ctx *ep_ctx;
 u32 trb_comp_code;

 slot_id = TRB_TO_SLOT_ID(le32_to_cpu(event->flags));
 xdev = xhci->devs[slot_id];
 ep_index = TRB_TO_EP_ID(le32_to_cpu(event->flags)) - 1;
 ep_ring = xhci_dma_to_transfer_ring(ep, le64_to_cpu(event->buffer));
 ep_ctx = xhci_get_ep_ctx(xhci, xdev->out_ctx, ep_index);
 trb_comp_code = GET_COMP_CODE(le32_to_cpu(event->transfer_len));

 switch (trb_comp_code) {
 case 128:
  if (event_trb == ep_ring->dequeue) {
   xhci_warn(xhci, "WARN: Success on ctrl setup TRB "
     "without IOC set??\n");
   *status = -ESHUTDOWN;
  } else if (event_trb != td->last_trb) {
   xhci_warn(xhci, "WARN: Success on ctrl data TRB "
     "without IOC set??\n");
   *status = -ESHUTDOWN;
  } else {
   *status = 0;
  }
  break;
 case 132:
  if (td->urb->transfer_flags & URB_SHORT_NOT_OK)
   *status = -EREMOTEIO;
  else
   *status = 0;
  break;
 case 129:
 case 130:
  return finish_td(xhci, td, event_trb, event, ep, status, 0);
 default:
  if (!xhci_requires_manual_halt_cleanup(xhci,
     ep_ctx, trb_comp_code))
   break;
  xhci_dbg(xhci, "TRB error code %u, "
    "halted endpoint index = %u\n",
    trb_comp_code, ep_index);

 case 131:

  if (event_trb != ep_ring->dequeue &&
    event_trb != td->last_trb)
   td->urb->actual_length =
    td->urb->transfer_buffer_length -
    EVENT_TRB_LEN(le32_to_cpu(event->transfer_len));
  else
   td->urb->actual_length = 0;

  xhci_cleanup_halted_endpoint(xhci,
   slot_id, ep_index, 0, td, event_trb);
  return finish_td(xhci, td, event_trb, event, ep, status, 1);
 }




 if (event_trb != ep_ring->dequeue) {

  if (event_trb == td->last_trb) {
   if (td->urb->actual_length != 0) {


    if ((*status == -EINPROGRESS || *status == 0) &&
      (td->urb->transfer_flags
       & URB_SHORT_NOT_OK))


     *status = -EREMOTEIO;
   } else {
    td->urb->actual_length =
     td->urb->transfer_buffer_length;
   }
  } else {

   td->urb->actual_length =
    td->urb->transfer_buffer_length -
    EVENT_TRB_LEN(le32_to_cpu(event->transfer_len));
   xhci_dbg(xhci, "Waiting for status "
     "stage event\n");
   return 0;
  }
 }

 return finish_td(xhci, td, event_trb, event, ep, status, 0);
}
