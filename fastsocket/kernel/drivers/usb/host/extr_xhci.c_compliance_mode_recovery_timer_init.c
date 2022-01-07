
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long data; scalar_t__ expires; int function; } ;
struct xhci_hcd {TYPE_1__ comp_mode_recovery_timer; scalar_t__ port_status_u0; } ;


 int COMP_MODE_RCVRY_MSECS ;
 int add_timer (TYPE_1__*) ;
 int compliance_mode_recovery ;
 int init_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int xhci_dbg (struct xhci_hcd*,char*) ;

__attribute__((used)) static void compliance_mode_recovery_timer_init(struct xhci_hcd *xhci)
{
 xhci->port_status_u0 = 0;
 init_timer(&xhci->comp_mode_recovery_timer);

 xhci->comp_mode_recovery_timer.data = (unsigned long) xhci;
 xhci->comp_mode_recovery_timer.function = compliance_mode_recovery;
 xhci->comp_mode_recovery_timer.expires = jiffies +
   msecs_to_jiffies(COMP_MODE_RCVRY_MSECS);

 add_timer(&xhci->comp_mode_recovery_timer);
 xhci_dbg(xhci, "Compliance mode recovery timer initialized\n");
}
