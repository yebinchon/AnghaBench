
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sta_info {int dummy; } ;
struct ieee80211_if_managed {int flags; int bssid; int associated; scalar_t__ broken_ap; int powersave; } ;
struct TYPE_2__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;


 int IEEE80211_STA_BEACON_POLL ;
 int IEEE80211_STA_CONNECTION_POLL ;
 int WLAN_STA_AUTHORIZED ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct sta_info* sta_info_get (struct ieee80211_sub_if_data*,int ) ;
 int test_sta_flag (struct sta_info*,int ) ;

__attribute__((used)) static bool ieee80211_powersave_allowed(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_if_managed *mgd = &sdata->u.mgd;
 struct sta_info *sta = ((void*)0);
 bool authorized = 0;

 if (!mgd->powersave)
  return 0;

 if (mgd->broken_ap)
  return 0;

 if (!mgd->associated)
  return 0;

 if (mgd->flags & (IEEE80211_STA_BEACON_POLL |
     IEEE80211_STA_CONNECTION_POLL))
  return 0;

 rcu_read_lock();
 sta = sta_info_get(sdata, mgd->bssid);
 if (sta)
  authorized = test_sta_flag(sta, WLAN_STA_AUTHORIZED);
 rcu_read_unlock();

 return authorized;
}
