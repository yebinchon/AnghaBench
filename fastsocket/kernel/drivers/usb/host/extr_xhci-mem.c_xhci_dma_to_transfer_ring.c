
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct xhci_virt_ep {int ep_state; struct xhci_ring* ring; TYPE_1__* stream_info; } ;
struct xhci_ring {int dummy; } ;
struct TYPE_2__ {int trb_address_map; } ;


 int EP_HAS_STREAMS ;
 int TRB_SEGMENT_SHIFT ;
 struct xhci_ring* radix_tree_lookup (int *,int) ;

struct xhci_ring *xhci_dma_to_transfer_ring(
  struct xhci_virt_ep *ep,
  u64 address)
{
 if (ep->ep_state & EP_HAS_STREAMS)
  return radix_tree_lookup(&ep->stream_info->trb_address_map,
    address >> TRB_SEGMENT_SHIFT);
 return ep->ring;
}
