
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDT_DC ;
 int inb (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;
 int wdtpci_ctr_load (int,int ) ;
 int wdtpci_lock ;

__attribute__((used)) static int wdtpci_stop(void)
{
 unsigned long flags;


 spin_lock_irqsave(&wdtpci_lock, flags);
 inb(WDT_DC);
 udelay(8);
 wdtpci_ctr_load(2, 0);
 spin_unlock_irqrestore(&wdtpci_lock, flags);
 return 0;
}
