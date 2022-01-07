
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_ring {scalar_t__ first_seg; } ;
struct xhci_hcd {int dummy; } ;


 int kfree (struct xhci_ring*) ;
 int xhci_free_segments_for_ring (struct xhci_hcd*,scalar_t__) ;

void xhci_ring_free(struct xhci_hcd *xhci, struct xhci_ring *ring)
{
 if (!ring)
  return;

 if (ring->first_seg)
  xhci_free_segments_for_ring(xhci, ring->first_seg);

 kfree(ring);
}
