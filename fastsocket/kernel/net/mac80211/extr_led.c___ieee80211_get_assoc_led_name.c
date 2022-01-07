
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {char* assoc_led_name; } ;
struct ieee80211_hw {int dummy; } ;


 struct ieee80211_local* hw_to_local (struct ieee80211_hw*) ;

char *__ieee80211_get_assoc_led_name(struct ieee80211_hw *hw)
{
 struct ieee80211_local *local = hw_to_local(hw);

 return local->assoc_led_name;
}
