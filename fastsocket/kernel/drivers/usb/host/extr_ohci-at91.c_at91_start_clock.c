
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clk_enable (int ) ;
 int clocked ;
 scalar_t__ cpu_is_at91sam9261 () ;
 int fclk ;
 int hclk ;
 int iclk ;

__attribute__((used)) static void at91_start_clock(void)
{
 if (cpu_is_at91sam9261())
  clk_enable(hclk);
 clk_enable(iclk);
 clk_enable(fclk);
 clocked = 1;
}
