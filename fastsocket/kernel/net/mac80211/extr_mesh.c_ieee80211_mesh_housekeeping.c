
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_if_mesh {int housekeeping_timer; } ;
struct TYPE_2__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;


 scalar_t__ IEEE80211_MESH_HOUSEKEEPING_INTERVAL ;
 int IEEE80211_MESH_PEER_INACTIVITY_LIMIT ;
 int ieee80211_mbss_info_change_notify (struct ieee80211_sub_if_data*,int ) ;
 int ieee80211_sta_expire (struct ieee80211_sub_if_data*,int ) ;
 scalar_t__ jiffies ;
 int mesh_accept_plinks_update (struct ieee80211_sub_if_data*) ;
 int mesh_path_expire (struct ieee80211_sub_if_data*) ;
 int mod_timer (int *,int ) ;
 int round_jiffies (scalar_t__) ;

__attribute__((used)) static void ieee80211_mesh_housekeeping(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;
 u32 changed;

 ieee80211_sta_expire(sdata, IEEE80211_MESH_PEER_INACTIVITY_LIMIT);
 mesh_path_expire(sdata);

 changed = mesh_accept_plinks_update(sdata);
 ieee80211_mbss_info_change_notify(sdata, changed);

 mod_timer(&ifmsh->housekeeping_timer,
    round_jiffies(jiffies +
    IEEE80211_MESH_HOUSEKEEPING_INTERVAL));
}
