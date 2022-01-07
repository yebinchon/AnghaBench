
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct ieee80211_local {int dummy; } ;


 int ieee80211_cancel_roc (struct ieee80211_local*,int ,int) ;
 struct ieee80211_local* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int ieee80211_mgmt_tx_cancel_wait(struct wiphy *wiphy,
      struct wireless_dev *wdev,
      u64 cookie)
{
 struct ieee80211_local *local = wiphy_priv(wiphy);

 return ieee80211_cancel_roc(local, cookie, 1);
}
