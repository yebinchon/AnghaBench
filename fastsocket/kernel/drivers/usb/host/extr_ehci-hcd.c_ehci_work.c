
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ehci_hcd {int scanning; int next_uframe; scalar_t__ periodic_sched; TYPE_2__* async; } ;
struct TYPE_6__ {int state; } ;
struct TYPE_4__ {int * ptr; } ;
struct TYPE_5__ {TYPE_1__ qh_next; } ;


 scalar_t__ HC_IS_RUNNING (int ) ;
 int TIMER_IO_WATCHDOG ;
 TYPE_3__* ehci_to_hcd (struct ehci_hcd*) ;
 int scan_async (struct ehci_hcd*) ;
 int scan_periodic (struct ehci_hcd*) ;
 int timer_action (struct ehci_hcd*,int ) ;
 int timer_action_done (struct ehci_hcd*,int ) ;

__attribute__((used)) static void ehci_work (struct ehci_hcd *ehci)
{
 timer_action_done (ehci, TIMER_IO_WATCHDOG);





 if (ehci->scanning)
  return;
 ehci->scanning = 1;
 scan_async (ehci);
 if (ehci->next_uframe != -1)
  scan_periodic (ehci);
 ehci->scanning = 0;





 if (HC_IS_RUNNING (ehci_to_hcd(ehci)->state) &&
   (ehci->async->qh_next.ptr != ((void*)0) ||
    ehci->periodic_sched != 0))
  timer_action (ehci, TIMER_IO_WATCHDOG);
}
