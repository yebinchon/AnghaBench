
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_virt_device {TYPE_1__* eps; int in_ctx; } ;
struct xhci_ring {int cycle_state; int enqueue; int enq_seg; } ;
struct xhci_hcd {struct xhci_virt_device** devs; } ;
struct xhci_ep_ctx {int deq; } ;
struct usb_device {size_t slot_id; } ;
struct TYPE_2__ {struct xhci_ring* ring; } ;


 int cpu_to_le64 (int) ;
 struct xhci_ep_ctx* xhci_get_ep_ctx (struct xhci_hcd*,int ,int ) ;
 int xhci_trb_virt_to_dma (int ,int ) ;

void xhci_copy_ep0_dequeue_into_input_ctx(struct xhci_hcd *xhci,
  struct usb_device *udev)
{
 struct xhci_virt_device *virt_dev;
 struct xhci_ep_ctx *ep0_ctx;
 struct xhci_ring *ep_ring;

 virt_dev = xhci->devs[udev->slot_id];
 ep0_ctx = xhci_get_ep_ctx(xhci, virt_dev->in_ctx, 0);
 ep_ring = virt_dev->eps[0].ring;







 ep0_ctx->deq = cpu_to_le64(xhci_trb_virt_to_dma(ep_ring->enq_seg,
       ep_ring->enqueue)
       | ep_ring->cycle_state);
}
