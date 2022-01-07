
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int dummy; } ;


 struct ieee80211_sub_if_data* IEEE80211_WDEV_TO_SUB_IF (struct wireless_dev*) ;
 int ieee80211_cancel_roc (struct ieee80211_local*,int ,int) ;

__attribute__((used)) static int ieee80211_cancel_remain_on_channel(struct wiphy *wiphy,
           struct wireless_dev *wdev,
           u64 cookie)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_WDEV_TO_SUB_IF(wdev);
 struct ieee80211_local *local = sdata->local;

 return ieee80211_cancel_roc(local, cookie, 0);
}
