
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDTIM_CTRL (int ) ;
 int __raw_writel (int ,int ) ;
 int clk_set_rate (scalar_t__,int ) ;
 int io_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wdt_base ;
 scalar_t__ wdt_clk ;

__attribute__((used)) static void wdt_disable(void)
{
 spin_lock(&io_lock);

 __raw_writel(0, WDTIM_CTRL(wdt_base));
 if (wdt_clk)
  clk_set_rate(wdt_clk, 0);

 spin_unlock(&io_lock);
}
