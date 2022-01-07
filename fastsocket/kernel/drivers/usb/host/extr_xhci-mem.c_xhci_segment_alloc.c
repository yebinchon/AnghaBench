
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xhci_segment {int * next; int dma; TYPE_2__* trbs; } ;
struct xhci_hcd {int segment_pool; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;
struct TYPE_4__ {int control; } ;
struct TYPE_5__ {TYPE_1__ link; } ;


 int TRBS_PER_SEGMENT ;
 int TRB_CYCLE ;
 int TRB_SEGMENT_SIZE ;
 TYPE_2__* dma_pool_alloc (int ,int ,int *) ;
 int kfree (struct xhci_segment*) ;
 struct xhci_segment* kzalloc (int,int ) ;
 int memset (TYPE_2__*,int ,int ) ;

__attribute__((used)) static struct xhci_segment *xhci_segment_alloc(struct xhci_hcd *xhci,
     unsigned int cycle_state, gfp_t flags)
{
 struct xhci_segment *seg;
 dma_addr_t dma;
 int i;

 seg = kzalloc(sizeof *seg, flags);
 if (!seg)
  return ((void*)0);

 seg->trbs = dma_pool_alloc(xhci->segment_pool, flags, &dma);
 if (!seg->trbs) {
  kfree(seg);
  return ((void*)0);
 }

 memset(seg->trbs, 0, TRB_SEGMENT_SIZE);

 if (cycle_state == 0) {
  for (i = 0; i < TRBS_PER_SEGMENT; i++)
   seg->trbs[i].link.control |= TRB_CYCLE;
 }
 seg->dma = dma;
 seg->next = ((void*)0);

 return seg;
}
