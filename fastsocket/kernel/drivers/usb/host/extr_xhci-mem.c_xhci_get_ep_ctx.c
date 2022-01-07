
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int hcc_params; } ;
struct xhci_ep_ctx {int dummy; } ;
struct xhci_container_ctx {scalar_t__ type; scalar_t__ bytes; } ;


 unsigned int CTX_SIZE (int ) ;
 scalar_t__ XHCI_CTX_TYPE_INPUT ;

struct xhci_ep_ctx *xhci_get_ep_ctx(struct xhci_hcd *xhci,
        struct xhci_container_ctx *ctx,
        unsigned int ep_index)
{

 ep_index++;
 if (ctx->type == XHCI_CTX_TYPE_INPUT)
  ep_index++;

 return (struct xhci_ep_ctx *)
  (ctx->bytes + (ep_index * CTX_SIZE(xhci->hcc_params)));
}
