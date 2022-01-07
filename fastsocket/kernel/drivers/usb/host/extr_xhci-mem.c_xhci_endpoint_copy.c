
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int dummy; } ;
struct xhci_ep_ctx {int tx_info; int deq; int ep_info2; int ep_info; } ;
struct xhci_container_ctx {int dummy; } ;


 struct xhci_ep_ctx* xhci_get_ep_ctx (struct xhci_hcd*,struct xhci_container_ctx*,unsigned int) ;

void xhci_endpoint_copy(struct xhci_hcd *xhci,
  struct xhci_container_ctx *in_ctx,
  struct xhci_container_ctx *out_ctx,
  unsigned int ep_index)
{
 struct xhci_ep_ctx *out_ep_ctx;
 struct xhci_ep_ctx *in_ep_ctx;

 out_ep_ctx = xhci_get_ep_ctx(xhci, out_ctx, ep_index);
 in_ep_ctx = xhci_get_ep_ctx(xhci, in_ctx, ep_index);

 in_ep_ctx->ep_info = out_ep_ctx->ep_info;
 in_ep_ctx->ep_info2 = out_ep_ctx->ep_info2;
 in_ep_ctx->deq = out_ep_ctx->deq;
 in_ep_ctx->tx_info = out_ep_ctx->tx_info;
}
