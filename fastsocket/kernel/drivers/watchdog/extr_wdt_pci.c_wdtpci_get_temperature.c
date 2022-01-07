
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDT_RT ;
 unsigned short inb (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;
 int wdtpci_lock ;

__attribute__((used)) static int wdtpci_get_temperature(int *temperature)
{
 unsigned short c;
 unsigned long flags;
 spin_lock_irqsave(&wdtpci_lock, flags);
 c = inb(WDT_RT);
 udelay(8);
 spin_unlock_irqrestore(&wdtpci_lock, flags);
 *temperature = (c * 11 / 15) + 7;
 return 0;
}
