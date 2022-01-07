
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_hcd {int lock; int async; int actions; } ;


 int TIMER_ASYNC_OFF ;
 int ehci_work (struct ehci_hcd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_unlink_async (struct ehci_hcd*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ehci_watchdog(unsigned long param)
{
 struct ehci_hcd *ehci = (struct ehci_hcd *) param;
 unsigned long flags;

 spin_lock_irqsave(&ehci->lock, flags);


 if (test_bit (TIMER_ASYNC_OFF, &ehci->actions))
  start_unlink_async (ehci, ehci->async);


 ehci_work (ehci);

 spin_unlock_irqrestore (&ehci->lock, flags);
}
