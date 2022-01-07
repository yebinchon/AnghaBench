
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_hcd {int iaa_watchdog; } ;


 int del_timer (int *) ;

__attribute__((used)) static inline void iaa_watchdog_done(struct ehci_hcd *ehci)
{
 del_timer(&ehci->iaa_watchdog);
}
