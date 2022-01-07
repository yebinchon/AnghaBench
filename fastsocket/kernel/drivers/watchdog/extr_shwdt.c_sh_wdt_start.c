
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 int HZ ;
 int RSTCSR_RSTS ;
 int WTCSR_RSTS ;
 int WTCSR_TME ;
 int WTCSR_WT ;
 int clock_division_ratio ;
 int heartbeat ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 scalar_t__ next_heartbeat ;
 int next_ping_period (int) ;
 int sh_wdt_read_csr () ;
 int sh_wdt_read_rstcsr () ;
 int sh_wdt_write_cnt (int ) ;
 int sh_wdt_write_csr (int) ;
 int sh_wdt_write_rstcsr (int) ;
 int shwdt_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer ;

__attribute__((used)) static void sh_wdt_start(void)
{
 __u8 csr;
 unsigned long flags;

 spin_lock_irqsave(&shwdt_lock, flags);

 next_heartbeat = jiffies + (heartbeat * HZ);
 mod_timer(&timer, next_ping_period(clock_division_ratio));

 csr = sh_wdt_read_csr();
 csr |= WTCSR_WT | clock_division_ratio;
 sh_wdt_write_csr(csr);

 sh_wdt_write_cnt(0);
 csr = sh_wdt_read_csr();
 csr |= WTCSR_TME;
 csr &= ~WTCSR_RSTS;
 sh_wdt_write_csr(csr);
 spin_unlock_irqrestore(&shwdt_lock, flags);
}
