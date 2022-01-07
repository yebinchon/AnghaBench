
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wiphy; } ;
struct ieee80211_local {TYPE_1__ hw; int radio_led_name; int assoc_led_name; int tx_led_name; int rx_led_name; } ;


 int snprintf (int ,int,char*,char*) ;
 char* wiphy_name (int ) ;

void ieee80211_led_names(struct ieee80211_local *local)
{
 snprintf(local->rx_led_name, sizeof(local->rx_led_name),
   "%srx", wiphy_name(local->hw.wiphy));
 snprintf(local->tx_led_name, sizeof(local->tx_led_name),
   "%stx", wiphy_name(local->hw.wiphy));
 snprintf(local->assoc_led_name, sizeof(local->assoc_led_name),
   "%sassoc", wiphy_name(local->hw.wiphy));
 snprintf(local->radio_led_name, sizeof(local->radio_led_name),
   "%sradio", wiphy_name(local->hw.wiphy));
}
