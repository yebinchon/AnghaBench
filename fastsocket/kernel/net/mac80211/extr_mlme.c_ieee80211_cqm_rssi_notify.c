
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_sub_if_data {int dev; } ;
typedef int gfp_t ;
typedef enum nl80211_cqm_rssi_threshold_event { ____Placeholder_nl80211_cqm_rssi_threshold_event } nl80211_cqm_rssi_threshold_event ;


 int cfg80211_cqm_rssi_notify (int ,int,int ) ;
 int trace_api_cqm_rssi_notify (struct ieee80211_sub_if_data*,int) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

void ieee80211_cqm_rssi_notify(struct ieee80211_vif *vif,
          enum nl80211_cqm_rssi_threshold_event rssi_event,
          gfp_t gfp)
{
 struct ieee80211_sub_if_data *sdata = vif_to_sdata(vif);

 trace_api_cqm_rssi_notify(sdata, rssi_event);

 cfg80211_cqm_rssi_notify(sdata->dev, rssi_event, gfp);
}
