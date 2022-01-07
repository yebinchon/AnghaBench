
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COUNT_ENAB ;
 int DEBUG_EN ;
 int MATCH_INT ;
 int MATCH_OUTPUT_HIGH ;
 int M_RES2 ;
 int RESET_COUNT ;
 int RESET_COUNT0 ;
 int STOP_COUNT0 ;
 int WDOG_COUNTER_RATE ;
 int WDTIM_COUNTER (int ) ;
 int WDTIM_CTRL (int ) ;
 int WDTIM_EMR (int ) ;
 int WDTIM_INT (int ) ;
 int WDTIM_MATCH0 (int ) ;
 int WDTIM_MCTRL (int ) ;
 int WDTIM_PULSE (int ) ;
 scalar_t__ __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int clk_set_rate (scalar_t__,int) ;
 int cpu_relax () ;
 int heartbeat ;
 int io_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wdt_base ;
 scalar_t__ wdt_clk ;

__attribute__((used)) static void wdt_enable(void)
{
 spin_lock(&io_lock);

 if (wdt_clk)
  clk_set_rate(wdt_clk, 1);


 __raw_writel(RESET_COUNT, WDTIM_CTRL(wdt_base));

 while (__raw_readl(WDTIM_COUNTER(wdt_base)))
  cpu_relax();

 __raw_writel(M_RES2 | STOP_COUNT0 | RESET_COUNT0,
  WDTIM_MCTRL(wdt_base));

 __raw_writel(MATCH_OUTPUT_HIGH, WDTIM_EMR(wdt_base));

 __raw_writel(MATCH_INT, WDTIM_INT(wdt_base));

 __raw_writel(0xFFFF, WDTIM_PULSE(wdt_base));
 __raw_writel(heartbeat * WDOG_COUNTER_RATE, WDTIM_MATCH0(wdt_base));

 __raw_writel(COUNT_ENAB | DEBUG_EN, WDTIM_CTRL(wdt_base));

 spin_unlock(&io_lock);
}
