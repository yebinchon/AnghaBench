
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_virt_device {int in_ctx; } ;
struct xhci_hcd {int dummy; } ;
struct xhci_ep_ctx {scalar_t__ tx_info; scalar_t__ deq; scalar_t__ ep_info2; scalar_t__ ep_info; } ;
struct usb_host_endpoint {int desc; } ;


 unsigned int xhci_get_endpoint_index (int *) ;
 struct xhci_ep_ctx* xhci_get_ep_ctx (struct xhci_hcd*,int ,unsigned int) ;

void xhci_endpoint_zero(struct xhci_hcd *xhci,
  struct xhci_virt_device *virt_dev,
  struct usb_host_endpoint *ep)
{
 unsigned int ep_index;
 struct xhci_ep_ctx *ep_ctx;

 ep_index = xhci_get_endpoint_index(&ep->desc);
 ep_ctx = xhci_get_ep_ctx(xhci, virt_dev->in_ctx, ep_index);

 ep_ctx->ep_info = 0;
 ep_ctx->ep_info2 = 0;
 ep_ctx->deq = 0;
 ep_ctx->tx_info = 0;



}
