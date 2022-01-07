
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISABLE_W83877F ;
 int ENABLE_W83877F ;
 scalar_t__ ENABLE_W83877F_PORT ;
 int WDT_PING ;
 int WDT_REGISTER ;
 int inb_p (int ) ;
 int outb_p (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wdt_spinlock ;

__attribute__((used)) static void wdt_change(int writeval)
{
 unsigned long flags;
 spin_lock_irqsave(&wdt_spinlock, flags);


 inb_p(WDT_PING);


 outb_p(ENABLE_W83877F, ENABLE_W83877F_PORT);
 outb_p(ENABLE_W83877F, ENABLE_W83877F_PORT);


 outb_p(WDT_REGISTER, ENABLE_W83877F_PORT);
 outb_p(writeval, ENABLE_W83877F_PORT+1);


 outb_p(DISABLE_W83877F, ENABLE_W83877F_PORT);

 spin_unlock_irqrestore(&wdt_spinlock, flags);
}
