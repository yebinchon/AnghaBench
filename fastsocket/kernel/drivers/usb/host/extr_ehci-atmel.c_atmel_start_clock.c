
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clk_enable (int ) ;
 int clocked ;
 int fclk ;
 int iclk ;

__attribute__((used)) static void atmel_start_clock(void)
{
 clk_enable(iclk);
 clk_enable(fclk);
 clocked = 1;
}
