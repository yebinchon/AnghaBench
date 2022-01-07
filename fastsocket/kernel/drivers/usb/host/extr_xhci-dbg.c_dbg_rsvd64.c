
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct xhci_hcd {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 int xhci_dbg (struct xhci_hcd*,char*,int *,unsigned long long,int ,int) ;

__attribute__((used)) static void dbg_rsvd64(struct xhci_hcd *xhci, u64 *ctx, dma_addr_t dma)
{
 int i;
 for (i = 0; i < 4; ++i) {
  xhci_dbg(xhci, "@%p (virt) @%08llx "
    "(dma) %#08llx - rsvd64[%d]\n",
    &ctx[4 + i], (unsigned long long)dma,
    ctx[4 + i], i);
  dma += 8;
 }
}
