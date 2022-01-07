
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int TIMER_MARGIN_DEFAULT ;
 unsigned int TIMER_MARGIN_MAX ;
 unsigned int TIMER_MARGIN_MIN ;
 unsigned int timer_margin ;

__attribute__((used)) static void omap_wdt_adjust_timeout(unsigned new_timeout)
{
 if (new_timeout < TIMER_MARGIN_MIN)
  new_timeout = TIMER_MARGIN_DEFAULT;
 if (new_timeout > TIMER_MARGIN_MAX)
  new_timeout = TIMER_MARGIN_MAX;
 timer_margin = new_timeout;
}
