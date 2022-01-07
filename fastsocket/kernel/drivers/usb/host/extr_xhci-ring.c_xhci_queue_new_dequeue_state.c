
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct xhci_virt_ep {int ep_state; } ;
struct xhci_hcd {TYPE_1__** devs; } ;
struct xhci_dequeue_state {scalar_t__ new_cycle_state; int new_deq_ptr; TYPE_2__* new_deq_seg; } ;
struct TYPE_6__ {scalar_t__ dma; } ;
struct TYPE_5__ {struct xhci_virt_ep* eps; } ;


 int SET_DEQ_PENDING ;
 int queue_set_tr_deq (struct xhci_hcd*,unsigned int,unsigned int,unsigned int,TYPE_2__*,int ,int ) ;
 int xhci_dbg (struct xhci_hcd*,char*,TYPE_2__*,unsigned long long,int ,unsigned long long,scalar_t__) ;
 scalar_t__ xhci_trb_virt_to_dma (TYPE_2__*,int ) ;

void xhci_queue_new_dequeue_state(struct xhci_hcd *xhci,
  unsigned int slot_id, unsigned int ep_index,
  unsigned int stream_id,
  struct xhci_dequeue_state *deq_state)
{
 struct xhci_virt_ep *ep = &xhci->devs[slot_id]->eps[ep_index];

 xhci_dbg(xhci, "Set TR Deq Ptr cmd, new deq seg = %p (0x%llx dma), "
   "new deq ptr = %p (0x%llx dma), new cycle = %u\n",
   deq_state->new_deq_seg,
   (unsigned long long)deq_state->new_deq_seg->dma,
   deq_state->new_deq_ptr,
   (unsigned long long)xhci_trb_virt_to_dma(deq_state->new_deq_seg, deq_state->new_deq_ptr),
   deq_state->new_cycle_state);
 queue_set_tr_deq(xhci, slot_id, ep_index, stream_id,
   deq_state->new_deq_seg,
   deq_state->new_deq_ptr,
   (u32) deq_state->new_cycle_state);





 ep->ep_state |= SET_DEQ_PENDING;
}
