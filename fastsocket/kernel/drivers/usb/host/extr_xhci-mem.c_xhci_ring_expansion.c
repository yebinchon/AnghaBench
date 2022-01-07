
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_segment {int dummy; } ;
struct xhci_ring {unsigned int num_segs; int type; int cycle_state; } ;
struct xhci_hcd {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int TRBS_PER_SEGMENT ;
 int xhci_alloc_segments_for_ring (struct xhci_hcd*,struct xhci_segment**,struct xhci_segment**,unsigned int,int ,int ,int ) ;
 int xhci_dbg (struct xhci_hcd*,char*,unsigned int) ;
 int xhci_link_rings (struct xhci_hcd*,struct xhci_ring*,struct xhci_segment*,struct xhci_segment*,unsigned int) ;

int xhci_ring_expansion(struct xhci_hcd *xhci, struct xhci_ring *ring,
    unsigned int num_trbs, gfp_t flags)
{
 struct xhci_segment *first;
 struct xhci_segment *last;
 unsigned int num_segs;
 unsigned int num_segs_needed;
 int ret;

 num_segs_needed = (num_trbs + (TRBS_PER_SEGMENT - 1) - 1) /
    (TRBS_PER_SEGMENT - 1);


 num_segs = ring->num_segs > num_segs_needed ?
   ring->num_segs : num_segs_needed;

 ret = xhci_alloc_segments_for_ring(xhci, &first, &last,
   num_segs, ring->cycle_state, ring->type, flags);
 if (ret)
  return -ENOMEM;

 xhci_link_rings(xhci, ring, first, last, num_segs);
 xhci_dbg(xhci, "ring expansion succeed, now has %d segments\n",
   ring->num_segs);

 return 0;
}
