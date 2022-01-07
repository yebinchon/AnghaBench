
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clk_disable (int ) ;
 scalar_t__ clocked ;
 int fclk ;
 int iclk ;

__attribute__((used)) static void atmel_stop_clock(void)
{
 clk_disable(fclk);
 clk_disable(iclk);
 clocked = 0;
}
