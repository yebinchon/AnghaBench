
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sub_if_data {int dev; } ;
typedef int gfp_t ;


 int cfg80211_gtk_rekey_notify (int ,int const*,int const*,int ) ;
 int trace_api_gtk_rekey_notify (struct ieee80211_sub_if_data*,int const*,int const*) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

void ieee80211_gtk_rekey_notify(struct ieee80211_vif *vif, const u8 *bssid,
    const u8 *replay_ctr, gfp_t gfp)
{
 struct ieee80211_sub_if_data *sdata = vif_to_sdata(vif);

 trace_api_gtk_rekey_notify(sdata, bssid, replay_ctr);

 cfg80211_gtk_rekey_notify(sdata->dev, bssid, replay_ctr, gfp);
}
