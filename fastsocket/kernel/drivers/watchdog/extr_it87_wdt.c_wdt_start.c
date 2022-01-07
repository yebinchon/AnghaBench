
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO ;
 int WDTCFG ;
 int WDTCTRL ;
 int WDTS_USE_GP ;
 int WDTVALLSB ;
 int WDTVALMSB ;
 int WDT_CIRINT ;
 int WDT_GAMEPORT ;
 int WDT_KRST ;
 int WDT_PWROK ;
 int WDT_TOV1 ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int spinlock ;
 int superio_enter () ;
 int superio_exit () ;
 int superio_outb (int,int ) ;
 int superio_select (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int testmode ;
 int timeout ;
 int wdt_status ;

__attribute__((used)) static void wdt_start(void)
{
 unsigned long flags;

 spin_lock_irqsave(&spinlock, flags);
 superio_enter();

 superio_select(GPIO);
 if (test_bit(WDTS_USE_GP, &wdt_status))
  superio_outb(WDT_GAMEPORT, WDTCTRL);
 else
  superio_outb(WDT_CIRINT, WDTCTRL);
 if (!testmode)
  superio_outb(WDT_TOV1 | WDT_KRST | WDT_PWROK, WDTCFG);
 else
  superio_outb(WDT_TOV1, WDTCFG);
 superio_outb(timeout>>8, WDTVALMSB);
 superio_outb(timeout, WDTVALLSB);

 superio_exit();
 spin_unlock_irqrestore(&spinlock, flags);
}
