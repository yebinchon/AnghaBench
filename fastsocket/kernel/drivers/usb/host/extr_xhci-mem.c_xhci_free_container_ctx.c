
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int device_pool; } ;
struct xhci_container_ctx {int dma; int bytes; } ;


 int dma_pool_free (int ,int ,int ) ;
 int kfree (struct xhci_container_ctx*) ;

__attribute__((used)) static void xhci_free_container_ctx(struct xhci_hcd *xhci,
        struct xhci_container_ctx *ctx)
{
 if (!ctx)
  return;
 dma_pool_free(xhci->device_pool, ctx->bytes, ctx->dma);
 kfree(ctx);
}
