
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_virt_device {TYPE_1__* eps; } ;
struct xhci_hcd {unsigned int num_active_eps; } ;
struct TYPE_2__ {scalar_t__ ring; } ;


 int xhci_dbg (struct xhci_hcd*,char*,unsigned int,unsigned int,unsigned int) ;

void xhci_free_device_endpoint_resources(struct xhci_hcd *xhci,
 struct xhci_virt_device *virt_dev, bool drop_control_ep)
{
 int i;
 unsigned int num_dropped_eps = 0;
 unsigned int drop_flags = 0;

 for (i = (drop_control_ep ? 0 : 1); i < 31; i++) {
  if (virt_dev->eps[i].ring) {
   drop_flags |= 1 << i;
   num_dropped_eps++;
  }
 }
 xhci->num_active_eps -= num_dropped_eps;
 if (num_dropped_eps)
  xhci_dbg(xhci, "Dropped %u ep ctxs, flags = 0x%x, "
    "%u now active.\n",
    num_dropped_eps, drop_flags,
    xhci->num_active_eps);
}
