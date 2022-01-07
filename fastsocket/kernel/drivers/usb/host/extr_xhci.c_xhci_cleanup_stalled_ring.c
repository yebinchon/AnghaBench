
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_virt_ep {int stopped_stream; int stopped_td; } ;
struct xhci_hcd {int quirks; TYPE_1__** devs; } ;
struct xhci_dequeue_state {int dummy; } ;
struct usb_device {size_t slot_id; } ;
struct TYPE_2__ {struct xhci_virt_ep* eps; } ;


 int XHCI_RESET_EP_QUIRK ;
 int xhci_dbg (struct xhci_hcd*,char*) ;
 int xhci_find_new_dequeue_state (struct xhci_hcd*,size_t,unsigned int,int ,int ,struct xhci_dequeue_state*) ;
 int xhci_queue_new_dequeue_state (struct xhci_hcd*,size_t,unsigned int,int ,struct xhci_dequeue_state*) ;
 int xhci_setup_input_ctx_for_quirk (struct xhci_hcd*,size_t,unsigned int,struct xhci_dequeue_state*) ;

void xhci_cleanup_stalled_ring(struct xhci_hcd *xhci,
  struct usb_device *udev, unsigned int ep_index)
{
 struct xhci_dequeue_state deq_state;
 struct xhci_virt_ep *ep;

 xhci_dbg(xhci, "Cleaning up stalled endpoint ring\n");
 ep = &xhci->devs[udev->slot_id]->eps[ep_index];



 xhci_find_new_dequeue_state(xhci, udev->slot_id,
   ep_index, ep->stopped_stream, ep->stopped_td,
   &deq_state);




 if (!(xhci->quirks & XHCI_RESET_EP_QUIRK)) {
  xhci_dbg(xhci, "Queueing new dequeue state\n");
  xhci_queue_new_dequeue_state(xhci, udev->slot_id,
    ep_index, ep->stopped_stream, &deq_state);
 } else {





  xhci_dbg(xhci, "Setting up input context for "
    "configure endpoint command\n");
  xhci_setup_input_ctx_for_quirk(xhci, udev->slot_id,
    ep_index, &deq_state);
 }
}
