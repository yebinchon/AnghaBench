
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_slot_ctx {int dev_state; int tt_info; int dev_info2; int dev_info; } ;
struct xhci_hcd {int dummy; } ;
struct xhci_container_ctx {int dummy; } ;


 struct xhci_slot_ctx* xhci_get_slot_ctx (struct xhci_hcd*,struct xhci_container_ctx*) ;

void xhci_slot_copy(struct xhci_hcd *xhci,
  struct xhci_container_ctx *in_ctx,
  struct xhci_container_ctx *out_ctx)
{
 struct xhci_slot_ctx *in_slot_ctx;
 struct xhci_slot_ctx *out_slot_ctx;

 in_slot_ctx = xhci_get_slot_ctx(xhci, in_ctx);
 out_slot_ctx = xhci_get_slot_ctx(xhci, out_ctx);

 in_slot_ctx->dev_info = out_slot_ctx->dev_info;
 in_slot_ctx->dev_info2 = out_slot_ctx->dev_info2;
 in_slot_ctx->tt_info = out_slot_ctx->tt_info;
 in_slot_ctx->dev_state = out_slot_ctx->dev_state;
}
