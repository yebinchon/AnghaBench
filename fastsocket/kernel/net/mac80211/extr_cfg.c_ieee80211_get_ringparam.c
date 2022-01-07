
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wiphy {int dummy; } ;
struct ieee80211_local {int dummy; } ;


 int drv_get_ringparam (struct ieee80211_local*,int *,int *,int *,int *) ;
 struct ieee80211_local* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static void ieee80211_get_ringparam(struct wiphy *wiphy,
        u32 *tx, u32 *tx_max, u32 *rx, u32 *rx_max)
{
 struct ieee80211_local *local = wiphy_priv(wiphy);

 drv_get_ringparam(local, tx, tx_max, rx, rx_max);
}
