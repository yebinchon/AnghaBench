
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_vif {int dummy; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ieee80211_if_managed {int ave_beacon_signal; } ;
struct TYPE_3__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; TYPE_1__ u; } ;


 scalar_t__ NL80211_IFTYPE_STATION ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

int ieee80211_ave_rssi(struct ieee80211_vif *vif)
{
 struct ieee80211_sub_if_data *sdata = vif_to_sdata(vif);
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;

 if (WARN_ON_ONCE(sdata->vif.type != NL80211_IFTYPE_STATION)) {

  return 0;
 }
 return ifmgd->ave_beacon_signal / 16;
}
