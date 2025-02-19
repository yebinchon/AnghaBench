
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sk_buff {int dummy; } ;
struct ieee80211_if_mesh {scalar_t__ adjusting_tbtt; scalar_t__ ps_peers_deep_sleep; scalar_t__ accepting_plinks; int estab_plinks; int mesh_auth_id; int mesh_sp_id; int mesh_cc_id; int mesh_pm_id; int mesh_pp_id; } ;
struct TYPE_2__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;
struct ieee80211_meshconf_ie {int dummy; } ;


 int ENOMEM ;
 int IEEE80211_MESHCONF_CAPAB_ACCEPT_PLINKS ;
 scalar_t__ IEEE80211_MESHCONF_CAPAB_FORWARDING ;
 int IEEE80211_MESHCONF_CAPAB_POWER_SAVE_LEVEL ;
 int IEEE80211_MESHCONF_CAPAB_TBTT_ADJUSTING ;
 int WLAN_EID_MESH_CONFIG ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__* skb_put (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_tailroom (struct sk_buff*) ;

int mesh_add_meshconf_ie(struct ieee80211_sub_if_data *sdata,
    struct sk_buff *skb)
{
 struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;
 u8 *pos, neighbors;
 u8 meshconf_len = sizeof(struct ieee80211_meshconf_ie);

 if (skb_tailroom(skb) < 2 + meshconf_len)
  return -ENOMEM;

 pos = skb_put(skb, 2 + meshconf_len);
 *pos++ = WLAN_EID_MESH_CONFIG;
 *pos++ = meshconf_len;


 *pos++ = ifmsh->mesh_pp_id;

 *pos++ = ifmsh->mesh_pm_id;

 *pos++ = ifmsh->mesh_cc_id;

 *pos++ = ifmsh->mesh_sp_id;

 *pos++ = ifmsh->mesh_auth_id;

 neighbors = atomic_read(&ifmsh->estab_plinks);

 neighbors = (neighbors > 15) ? 15 : neighbors;
 *pos++ = neighbors << 1;

 *pos = IEEE80211_MESHCONF_CAPAB_FORWARDING;
 *pos |= ifmsh->accepting_plinks ?
   IEEE80211_MESHCONF_CAPAB_ACCEPT_PLINKS : 0x00;

 *pos |= ifmsh->ps_peers_deep_sleep ?
   IEEE80211_MESHCONF_CAPAB_POWER_SAVE_LEVEL : 0x00;
 *pos++ |= ifmsh->adjusting_tbtt ?
   IEEE80211_MESHCONF_CAPAB_TBTT_ADJUSTING : 0x00;
 *pos++ = 0x00;

 return 0;
}
