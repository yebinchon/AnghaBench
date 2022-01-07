
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_segment {struct xhci_segment* next; } ;
struct xhci_hcd {int dummy; } ;
typedef int gfp_t ;
typedef enum xhci_ring_type { ____Placeholder_xhci_ring_type } xhci_ring_type ;


 int ENOMEM ;
 int xhci_link_segments (struct xhci_hcd*,struct xhci_segment*,struct xhci_segment*,int) ;
 struct xhci_segment* xhci_segment_alloc (struct xhci_hcd*,unsigned int,int ) ;
 int xhci_segment_free (struct xhci_hcd*,struct xhci_segment*) ;

__attribute__((used)) static int xhci_alloc_segments_for_ring(struct xhci_hcd *xhci,
  struct xhci_segment **first, struct xhci_segment **last,
  unsigned int num_segs, unsigned int cycle_state,
  enum xhci_ring_type type, gfp_t flags)
{
 struct xhci_segment *prev;

 prev = xhci_segment_alloc(xhci, cycle_state, flags);
 if (!prev)
  return -ENOMEM;
 num_segs--;

 *first = prev;
 while (num_segs > 0) {
  struct xhci_segment *next;

  next = xhci_segment_alloc(xhci, cycle_state, flags);
  if (!next) {
   prev = *first;
   while (prev) {
    next = prev->next;
    xhci_segment_free(xhci, prev);
    prev = next;
   }
   return -ENOMEM;
  }
  xhci_link_segments(xhci, prev, next, type);

  prev = next;
  num_segs--;
 }
 xhci_link_segments(xhci, prev, *first, type);
 *last = prev;

 return 0;
}
