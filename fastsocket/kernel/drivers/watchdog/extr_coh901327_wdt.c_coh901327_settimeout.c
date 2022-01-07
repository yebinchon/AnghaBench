
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ U300_WDOG_FR ;
 int U300_WDOG_FR_FEED_RESTART_TIMER ;
 scalar_t__ U300_WDOG_TR ;
 int clk ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int margin ;
 scalar_t__ virtbase ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int coh901327_settimeout(int time)
{





 if (time <= 0 || time > 327)
  return -EINVAL;

 margin = time;
 clk_enable(clk);

 writew(margin * 100, virtbase + U300_WDOG_TR);

 writew(U300_WDOG_FR_FEED_RESTART_TIMER,
        virtbase + U300_WDOG_FR);
 clk_disable(clk);
 return 0;
}
