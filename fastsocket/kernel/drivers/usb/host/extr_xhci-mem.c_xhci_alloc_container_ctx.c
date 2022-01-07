
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int device_pool; int hcc_params; } ;
struct xhci_container_ctx {int type; int size; int bytes; int dma; } ;
typedef int gfp_t ;


 int BUG_ON (int) ;
 scalar_t__ CTX_SIZE (int ) ;
 scalar_t__ HCC_64BYTE_CONTEXT (int ) ;
 int XHCI_CTX_TYPE_DEVICE ;
 int XHCI_CTX_TYPE_INPUT ;
 int dma_pool_alloc (int ,int ,int *) ;
 struct xhci_container_ctx* kzalloc (int,int ) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static struct xhci_container_ctx *xhci_alloc_container_ctx(struct xhci_hcd *xhci,
          int type, gfp_t flags)
{
 struct xhci_container_ctx *ctx = kzalloc(sizeof(*ctx), flags);
 if (!ctx)
  return ((void*)0);

 BUG_ON((type != XHCI_CTX_TYPE_DEVICE) && (type != XHCI_CTX_TYPE_INPUT));
 ctx->type = type;
 ctx->size = HCC_64BYTE_CONTEXT(xhci->hcc_params) ? 2048 : 1024;
 if (type == XHCI_CTX_TYPE_INPUT)
  ctx->size += CTX_SIZE(xhci->hcc_params);

 ctx->bytes = dma_pool_alloc(xhci->device_pool, flags, &ctx->dma);
 memset(ctx->bytes, 0, ctx->size);
 return ctx;
}
