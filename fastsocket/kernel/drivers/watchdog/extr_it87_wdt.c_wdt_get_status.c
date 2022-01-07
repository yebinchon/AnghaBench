
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO ;
 int WDIOF_CARDRESET ;
 int WDIOF_KEEPALIVEPING ;
 int WDIOF_MAGICCLOSE ;
 int WDTCTRL ;
 int WDTS_EXPECTED ;
 int WDTS_KEEPALIVE ;
 int WDTS_TIMER_RUN ;
 int WDT_ZERO ;
 int clear_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int spinlock ;
 int superio_enter () ;
 int superio_exit () ;
 int superio_inb (int ) ;
 int superio_outb (int,int ) ;
 int superio_select (int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ testmode ;
 int wdt_status ;

__attribute__((used)) static int wdt_get_status(int *status)
{
 unsigned long flags;

 *status = 0;
 if (testmode) {
  spin_lock_irqsave(&spinlock, flags);
  superio_enter();
  superio_select(GPIO);
  if (superio_inb(WDTCTRL) & WDT_ZERO) {
   superio_outb(0x00, WDTCTRL);
   clear_bit(WDTS_TIMER_RUN, &wdt_status);
   *status |= WDIOF_CARDRESET;
  }

  superio_exit();
  spin_unlock_irqrestore(&spinlock, flags);
 }
 if (test_and_clear_bit(WDTS_KEEPALIVE, &wdt_status))
  *status |= WDIOF_KEEPALIVEPING;
 if (test_bit(WDTS_EXPECTED, &wdt_status))
  *status |= WDIOF_MAGICCLOSE;
 return 0;
}
