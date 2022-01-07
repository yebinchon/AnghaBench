
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;


 int WARN_ON (int) ;
 int _ieee80211_enable_rssi_reports (struct ieee80211_sub_if_data*,int,int) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

void ieee80211_enable_rssi_reports(struct ieee80211_vif *vif,
        int rssi_min_thold,
        int rssi_max_thold)
{
 struct ieee80211_sub_if_data *sdata = vif_to_sdata(vif);

 WARN_ON(rssi_min_thold == rssi_max_thold ||
  rssi_min_thold > rssi_max_thold);

 _ieee80211_enable_rssi_reports(sdata, rssi_min_thold,
           rssi_max_thold);
}
