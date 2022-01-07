
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct ieee80211_local {int dummy; } ;


 int drv_rfkill_poll (struct ieee80211_local*) ;
 struct ieee80211_local* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static void ieee80211_rfkill_poll(struct wiphy *wiphy)
{
 struct ieee80211_local *local = wiphy_priv(wiphy);

 drv_rfkill_poll(local);
}
