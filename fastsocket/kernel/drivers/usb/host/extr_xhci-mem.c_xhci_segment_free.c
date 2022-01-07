
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_segment {int * trbs; int dma; } ;
struct xhci_hcd {int segment_pool; } ;


 int dma_pool_free (int ,int *,int ) ;
 int kfree (struct xhci_segment*) ;

__attribute__((used)) static void xhci_segment_free(struct xhci_hcd *xhci, struct xhci_segment *seg)
{
 if (seg->trbs) {
  dma_pool_free(xhci->segment_pool, seg->trbs, seg->dma);
  seg->trbs = ((void*)0);
 }
 kfree(seg);
}
