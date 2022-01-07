
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clk_disable (int ) ;
 scalar_t__ clocked ;
 scalar_t__ cpu_is_at91sam9261 () ;
 int fclk ;
 int hclk ;
 int iclk ;

__attribute__((used)) static void at91_stop_clock(void)
{
 clk_disable(fclk);
 clk_disable(iclk);
 if (cpu_is_at91sam9261())
  clk_disable(hclk);
 clocked = 0;
}
