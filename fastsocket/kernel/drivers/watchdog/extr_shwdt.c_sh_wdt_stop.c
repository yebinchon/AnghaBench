
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 int WTCSR_TME ;
 int del_timer (int *) ;
 int sh_wdt_read_csr () ;
 int sh_wdt_write_csr (int ) ;
 int shwdt_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer ;

__attribute__((used)) static void sh_wdt_stop(void)
{
 __u8 csr;
 unsigned long flags;

 spin_lock_irqsave(&shwdt_lock, flags);

 del_timer(&timer);

 csr = sh_wdt_read_csr();
 csr &= ~WTCSR_TME;
 sh_wdt_write_csr(csr);
 spin_unlock_irqrestore(&shwdt_lock, flags);
}
