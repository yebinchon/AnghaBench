
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int tx_led_counter; int tx_led; } ;


 int LED_FULL ;
 int LED_OFF ;
 int led_trigger_event (int ,int ) ;
 scalar_t__ unlikely (int) ;

void ieee80211_led_tx(struct ieee80211_local *local, int q)
{
 if (unlikely(!local->tx_led))
  return;

 local->tx_led_counter += 2*q-1;
 if (local->tx_led_counter % 2 == 0)
  led_trigger_event(local->tx_led, LED_OFF);
 else
  led_trigger_event(local->tx_led, LED_FULL);
}
