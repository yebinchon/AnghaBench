
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgdtor_param {struct xt_led_info* targinfo; } ;
struct xt_led_info_internal {int netfilter_led_trigger; int timer; } ;
struct xt_led_info {scalar_t__ delay; struct xt_led_info_internal* internal_data; } ;


 int del_timer_sync (int *) ;
 int kfree (struct xt_led_info_internal*) ;
 int led_trigger_unregister (int *) ;

__attribute__((used)) static void led_tg_destroy(const struct xt_tgdtor_param *par)
{
 const struct xt_led_info *ledinfo = par->targinfo;
 struct xt_led_info_internal *ledinternal = ledinfo->internal_data;

 if (ledinfo->delay > 0)
  del_timer_sync(&ledinternal->timer);

 led_trigger_unregister(&ledinternal->netfilter_led_trigger);
 kfree(ledinternal);
}
