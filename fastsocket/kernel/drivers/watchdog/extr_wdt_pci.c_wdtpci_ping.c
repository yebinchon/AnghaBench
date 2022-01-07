
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDT_DC ;
 int inb (int ) ;
 int outb (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;
 int wd_heartbeat ;
 int wdtpci_ctr_load (int,int ) ;
 int wdtpci_ctr_mode (int,int) ;
 int wdtpci_lock ;

__attribute__((used)) static int wdtpci_ping(void)
{
 unsigned long flags;

 spin_lock_irqsave(&wdtpci_lock, flags);

 inb(WDT_DC);
 udelay(8);
 wdtpci_ctr_mode(1, 2);

 wdtpci_ctr_load(1, wd_heartbeat);
 outb(0, WDT_DC);
 udelay(8);
 spin_unlock_irqrestore(&wdtpci_lock, flags);
 return 0;
}
