
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wiphy {int dummy; } ;
struct station_info {int dummy; } ;
struct TYPE_2__ {int addr; } ;
struct sta_info {TYPE_1__ sta; } ;
struct net_device {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int sta_mtx; } ;


 int ENOENT ;
 int ETH_ALEN ;
 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int memcpy (int *,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sta_info* sta_info_get_by_idx (struct ieee80211_sub_if_data*,int) ;
 int sta_set_sinfo (struct sta_info*,struct station_info*) ;

__attribute__((used)) static int ieee80211_dump_station(struct wiphy *wiphy, struct net_device *dev,
     int idx, u8 *mac, struct station_info *sinfo)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 struct ieee80211_local *local = sdata->local;
 struct sta_info *sta;
 int ret = -ENOENT;

 mutex_lock(&local->sta_mtx);

 sta = sta_info_get_by_idx(sdata, idx);
 if (sta) {
  ret = 0;
  memcpy(mac, sta->sta.addr, ETH_ALEN);
  sta_set_sinfo(sta, sinfo);
 }

 mutex_unlock(&local->sta_mtx);

 return ret;
}
