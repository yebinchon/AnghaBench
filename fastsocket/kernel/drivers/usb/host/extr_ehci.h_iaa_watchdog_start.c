
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_hcd {int iaa_watchdog; } ;


 int EHCI_IAA_MSECS ;
 int WARN_ON (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int timer_pending (int *) ;

__attribute__((used)) static inline void
iaa_watchdog_start(struct ehci_hcd *ehci)
{
 WARN_ON(timer_pending(&ehci->iaa_watchdog));
 mod_timer(&ehci->iaa_watchdog,
   jiffies + msecs_to_jiffies(EHCI_IAA_MSECS));
}
