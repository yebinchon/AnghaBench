
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_segment {struct xhci_segment* next; } ;
struct xhci_hcd {int dummy; } ;


 int xhci_segment_free (struct xhci_hcd*,struct xhci_segment*) ;

__attribute__((used)) static void xhci_free_segments_for_ring(struct xhci_hcd *xhci,
    struct xhci_segment *first)
{
 struct xhci_segment *seg;

 seg = first->next;
 while (seg != first) {
  struct xhci_segment *next = seg->next;
  xhci_segment_free(xhci, seg);
  seg = next;
 }
 xhci_segment_free(xhci, first);
}
