
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * field; } ;
union xhci_trb {TYPE_1__ generic; } ;
struct xhci_td {union xhci_trb* last_trb; union xhci_trb* first_trb; struct xhci_segment* start_seg; } ;
struct xhci_segment {scalar_t__ dma; } ;
struct xhci_ring {int dummy; } ;
struct xhci_hcd {int dummy; } ;


 int TRB_CHAIN ;
 int TRB_CYCLE ;
 int TRB_TR_NOOP ;
 int TRB_TYPE (int ) ;
 scalar_t__ TRB_TYPE_LINK_LE32 (int ) ;
 int cpu_to_le32 (int ) ;
 int next_trb (struct xhci_hcd*,struct xhci_ring*,struct xhci_segment**,union xhci_trb**) ;
 int xhci_dbg (struct xhci_hcd*,char*,...) ;
 scalar_t__ xhci_trb_virt_to_dma (struct xhci_segment*,union xhci_trb*) ;

__attribute__((used)) static void td_to_noop(struct xhci_hcd *xhci, struct xhci_ring *ep_ring,
  struct xhci_td *cur_td, bool flip_cycle)
{
 struct xhci_segment *cur_seg;
 union xhci_trb *cur_trb;

 for (cur_seg = cur_td->start_seg, cur_trb = cur_td->first_trb;
   1;
   next_trb(xhci, ep_ring, &cur_seg, &cur_trb)) {
  if (TRB_TYPE_LINK_LE32(cur_trb->generic.field[3])) {



   cur_trb->generic.field[3] &= cpu_to_le32(~TRB_CHAIN);



   if (flip_cycle)
    cur_trb->generic.field[3] ^=
     cpu_to_le32(TRB_CYCLE);
   xhci_dbg(xhci, "Cancel (unchain) link TRB\n");
   xhci_dbg(xhci, "Address = %p (0x%llx dma); "
     "in seg %p (0x%llx dma)\n",
     cur_trb,
     (unsigned long long)xhci_trb_virt_to_dma(cur_seg, cur_trb),
     cur_seg,
     (unsigned long long)cur_seg->dma);
  } else {
   cur_trb->generic.field[0] = 0;
   cur_trb->generic.field[1] = 0;
   cur_trb->generic.field[2] = 0;

   cur_trb->generic.field[3] &= cpu_to_le32(TRB_CYCLE);

   if (flip_cycle && cur_trb != cur_td->first_trb &&
     cur_trb != cur_td->last_trb)
    cur_trb->generic.field[3] ^=
     cpu_to_le32(TRB_CYCLE);
   cur_trb->generic.field[3] |= cpu_to_le32(
    TRB_TYPE(TRB_TR_NOOP));
   xhci_dbg(xhci, "TRB to noop at offset 0x%llx\n",
     (unsigned long long)
     xhci_trb_virt_to_dma(cur_seg, cur_trb));
  }
  if (cur_trb == cur_td->last_trb)
   break;
 }
}
