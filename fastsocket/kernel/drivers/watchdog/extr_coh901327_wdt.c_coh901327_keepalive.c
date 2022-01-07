
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ U300_WDOG_FR ;
 int U300_WDOG_FR_FEED_RESTART_TIMER ;
 int clk ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 scalar_t__ virtbase ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void coh901327_keepalive(void)
{
 clk_enable(clk);

 writew(U300_WDOG_FR_FEED_RESTART_TIMER,
        virtbase + U300_WDOG_FR);
 clk_disable(clk);
}
