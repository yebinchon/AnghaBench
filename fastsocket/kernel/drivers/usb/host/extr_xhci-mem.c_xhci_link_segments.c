
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct xhci_segment {TYPE_2__* trbs; int dma; struct xhci_segment* next; } ;
struct xhci_hcd {int quirks; } ;
typedef enum xhci_ring_type { ____Placeholder_xhci_ring_type } xhci_ring_type ;
struct TYPE_3__ {int control; int segment_ptr; } ;
struct TYPE_4__ {TYPE_1__ link; } ;


 int TRBS_PER_SEGMENT ;
 int TRB_CHAIN ;
 int TRB_LINK ;
 int TRB_TYPE (int ) ;
 int TRB_TYPE_BITMASK ;
 int TYPE_EVENT ;
 int TYPE_ISOC ;
 int XHCI_AMD_0x96_HOST ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int le32_to_cpu (int ) ;
 scalar_t__ xhci_link_trb_quirk (struct xhci_hcd*) ;

__attribute__((used)) static void xhci_link_segments(struct xhci_hcd *xhci, struct xhci_segment *prev,
  struct xhci_segment *next, enum xhci_ring_type type)
{
 u32 val;

 if (!prev || !next)
  return;
 prev->next = next;
 if (type != TYPE_EVENT) {
  prev->trbs[TRBS_PER_SEGMENT-1].link.segment_ptr =
   cpu_to_le64(next->dma);


  val = le32_to_cpu(prev->trbs[TRBS_PER_SEGMENT-1].link.control);
  val &= ~TRB_TYPE_BITMASK;
  val |= TRB_TYPE(TRB_LINK);


  if (xhci_link_trb_quirk(xhci) ||
    (type == TYPE_ISOC &&
     (xhci->quirks & XHCI_AMD_0x96_HOST)))
   val |= TRB_CHAIN;
  prev->trbs[TRBS_PER_SEGMENT-1].link.control = cpu_to_le32(val);
 }
}
