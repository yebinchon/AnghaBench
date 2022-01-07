
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb {scalar_t__ a_wait_bcon; } ;


 scalar_t__ TIMER_DELAY ;
 scalar_t__ is_host_enabled (struct musb*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int musb_conn_timer ;

void musb_platform_enable(struct musb *musb)
{
 if (is_host_enabled(musb)) {
  mod_timer(&musb_conn_timer, jiffies + TIMER_DELAY);
  musb->a_wait_bcon = TIMER_DELAY;
 }
}
