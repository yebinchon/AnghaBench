
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int GPIO ;
 int WDTS_TIMER_RUN ;
 int WDTVALLSB ;
 int WDTVALMSB ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int spinlock ;
 int superio_enter () ;
 int superio_exit () ;
 int superio_outb (int,int ) ;
 int superio_select (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int timeout ;
 int wdt_status ;

__attribute__((used)) static int wdt_set_timeout(int t)
{
 unsigned long flags;

 if (t < 1 || t > 65535)
  return -EINVAL;

 timeout = t;

 spin_lock_irqsave(&spinlock, flags);
 if (test_bit(WDTS_TIMER_RUN, &wdt_status)) {
  superio_enter();

  superio_select(GPIO);
  superio_outb(t>>8, WDTVALMSB);
  superio_outb(t, WDTVALLSB);

  superio_exit();
 }
 spin_unlock_irqrestore(&spinlock, flags);
 return 0;
}
