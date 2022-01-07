
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int control; int intr_target; int segment_ptr; } ;
union xhci_trb {TYPE_1__ link; } ;
typedef int u64 ;
struct xhci_segment {int dma; union xhci_trb* trbs; } ;
struct xhci_hcd {int dummy; } ;


 int TRBS_PER_SEGMENT ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;
 int xhci_dbg (struct xhci_hcd*,char*,int,int ,int ,int ,int ) ;

void xhci_debug_segment(struct xhci_hcd *xhci, struct xhci_segment *seg)
{
 int i;
 u64 addr = seg->dma;
 union xhci_trb *trb = seg->trbs;

 for (i = 0; i < TRBS_PER_SEGMENT; ++i) {
  trb = &seg->trbs[i];
  xhci_dbg(xhci, "@%016llx %08x %08x %08x %08x\n", addr,
    lower_32_bits(le64_to_cpu(trb->link.segment_ptr)),
    upper_32_bits(le64_to_cpu(trb->link.segment_ptr)),
    le32_to_cpu(trb->link.intr_target),
    le32_to_cpu(trb->link.control));
  addr += sizeof(*trb);
 }
}
