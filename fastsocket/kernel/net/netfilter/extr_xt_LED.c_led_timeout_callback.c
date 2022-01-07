
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_led_info_internal {int netfilter_led_trigger; } ;
struct xt_led_info {struct xt_led_info_internal* internal_data; } ;


 int LED_OFF ;
 int led_trigger_event (int *,int ) ;

__attribute__((used)) static void led_timeout_callback(unsigned long data)
{
 struct xt_led_info *ledinfo = (struct xt_led_info *)data;
 struct xt_led_info_internal *ledinternal = ledinfo->internal_data;

 led_trigger_event(&ledinternal->netfilter_led_trigger, LED_OFF);
}
