
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int radio_led; } ;


 int LED_FULL ;
 int LED_OFF ;
 int led_trigger_event (int ,int ) ;
 scalar_t__ unlikely (int) ;

void ieee80211_led_radio(struct ieee80211_local *local, bool enabled)
{
 if (unlikely(!local->radio_led))
  return;
 if (enabled)
  led_trigger_event(local->radio_led, LED_FULL);
 else
  led_trigger_event(local->radio_led, LED_OFF);
}
