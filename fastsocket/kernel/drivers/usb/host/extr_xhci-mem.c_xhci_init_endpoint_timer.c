
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long data; int function; } ;
struct xhci_virt_ep {struct xhci_hcd* xhci; TYPE_1__ stop_cmd_timer; } ;
struct xhci_hcd {int dummy; } ;


 int init_timer (TYPE_1__*) ;
 int xhci_stop_endpoint_command_watchdog ;

__attribute__((used)) static void xhci_init_endpoint_timer(struct xhci_hcd *xhci,
  struct xhci_virt_ep *ep)
{
 init_timer(&ep->stop_cmd_timer);
 ep->stop_cmd_timer.data = (unsigned long) ep;
 ep->stop_cmd_timer.function = xhci_stop_endpoint_command_watchdog;
 ep->xhci = xhci;
}
