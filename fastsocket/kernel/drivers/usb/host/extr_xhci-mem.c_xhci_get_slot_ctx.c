
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_slot_ctx {int dummy; } ;
struct xhci_hcd {int hcc_params; } ;
struct xhci_container_ctx {scalar_t__ type; scalar_t__ bytes; } ;


 scalar_t__ CTX_SIZE (int ) ;
 scalar_t__ XHCI_CTX_TYPE_DEVICE ;

struct xhci_slot_ctx *xhci_get_slot_ctx(struct xhci_hcd *xhci,
     struct xhci_container_ctx *ctx)
{
 if (ctx->type == XHCI_CTX_TYPE_DEVICE)
  return (struct xhci_slot_ctx *)ctx->bytes;

 return (struct xhci_slot_ctx *)
  (ctx->bytes + CTX_SIZE(xhci->hcc_params));
}
