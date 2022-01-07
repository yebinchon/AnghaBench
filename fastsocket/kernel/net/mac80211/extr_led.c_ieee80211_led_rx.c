
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int rx_led; int rx_led_counter; } ;


 int LED_FULL ;
 int LED_OFF ;
 int led_trigger_event (int ,int ) ;
 scalar_t__ unlikely (int) ;

void ieee80211_led_rx(struct ieee80211_local *local)
{
 if (unlikely(!local->rx_led))
  return;
 if (local->rx_led_counter++ % 2 == 0)
  led_trigger_event(local->rx_led, LED_OFF);
 else
  led_trigger_event(local->rx_led, LED_FULL);
}
