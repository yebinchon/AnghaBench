
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union xhci_trb {int dummy; } xhci_trb ;
struct xhci_segment {scalar_t__ dma; union xhci_trb* trbs; } ;
typedef scalar_t__ dma_addr_t ;


 unsigned long TRBS_PER_SEGMENT ;

dma_addr_t xhci_trb_virt_to_dma(struct xhci_segment *seg,
  union xhci_trb *trb)
{
 unsigned long segment_offset;

 if (!seg || !trb || trb < seg->trbs)
  return 0;

 segment_offset = trb - seg->trbs;
 if (segment_offset > TRBS_PER_SEGMENT)
  return 0;
 return seg->dma + (segment_offset * sizeof(*trb));
}
