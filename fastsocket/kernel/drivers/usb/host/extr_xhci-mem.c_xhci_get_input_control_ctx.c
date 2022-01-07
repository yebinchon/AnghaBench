
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_input_control_ctx {int dummy; } ;
struct xhci_hcd {int dummy; } ;
struct xhci_container_ctx {scalar_t__ type; scalar_t__ bytes; } ;


 int BUG_ON (int) ;
 scalar_t__ XHCI_CTX_TYPE_INPUT ;

struct xhci_input_control_ctx *xhci_get_input_control_ctx(struct xhci_hcd *xhci,
           struct xhci_container_ctx *ctx)
{
 BUG_ON(ctx->type != XHCI_CTX_TYPE_INPUT);
 return (struct xhci_input_control_ctx *)ctx->bytes;
}
