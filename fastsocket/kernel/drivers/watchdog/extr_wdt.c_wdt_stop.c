
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDT_DC ;
 int inb_p (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wdt_ctr_load (int,int ) ;
 int wdt_lock ;

__attribute__((used)) static int wdt_stop(void)
{
 unsigned long flags;
 spin_lock_irqsave(&wdt_lock, flags);

 inb_p(WDT_DC);
 wdt_ctr_load(2, 0);
 spin_unlock_irqrestore(&wdt_lock, flags);
 return 0;
}
