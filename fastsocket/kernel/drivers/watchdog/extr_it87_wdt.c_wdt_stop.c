
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO ;
 int WDTCFG ;
 int WDTCTRL ;
 int WDTVALLSB ;
 int WDTVALMSB ;
 int WDT_TOV1 ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int spinlock ;
 int superio_enter () ;
 int superio_exit () ;
 int superio_outb (int,int ) ;
 int superio_select (int ) ;

__attribute__((used)) static void wdt_stop(void)
{
 unsigned long flags;

 spin_lock_irqsave(&spinlock, flags);
 superio_enter();

 superio_select(GPIO);
 superio_outb(0x00, WDTCTRL);
 superio_outb(WDT_TOV1, WDTCFG);
 superio_outb(0x00, WDTVALMSB);
 superio_outb(0x00, WDTVALLSB);

 superio_exit();
 spin_unlock_irqrestore(&spinlock, flags);
}
