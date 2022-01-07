
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDT_RT ;
 unsigned short inb_p (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wdt_lock ;

__attribute__((used)) static int wdt_get_temperature(void)
{
 unsigned short c;
 unsigned long flags;

 spin_lock_irqsave(&wdt_lock, flags);
 c = inb_p(WDT_RT);
 spin_unlock_irqrestore(&wdt_lock, flags);
 return (c * 11 / 15) + 7;
}
