
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {scalar_t__ num_active_eps; scalar_t__ limit_active_eps; } ;


 int ENOMEM ;
 int xhci_dbg (struct xhci_hcd*,char*,scalar_t__,...) ;

__attribute__((used)) static int xhci_reserve_host_control_ep_resources(struct xhci_hcd *xhci)
{
 if (xhci->num_active_eps + 1 > xhci->limit_active_eps) {
  xhci_dbg(xhci, "Not enough ep ctxs: "
    "%u active, need to add 1, limit is %u.\n",
    xhci->num_active_eps, xhci->limit_active_eps);
  return -ENOMEM;
 }
 xhci->num_active_eps += 1;
 xhci_dbg(xhci, "Adding 1 ep ctx, %u now active.\n",
   xhci->num_active_eps);
 return 0;
}
