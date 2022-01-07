
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int addr; } ;
struct sta_info {int lock; int reason; int plid; int llid; TYPE_1__ sta; struct ieee80211_sub_if_data* sdata; } ;
struct ieee80211_sub_if_data {int dummy; } ;


 int WLAN_REASON_MESH_PEER_CANCELED ;
 int WLAN_SP_MESH_PEERING_CLOSE ;
 int __mesh_plink_deactivate (struct sta_info*) ;
 int cpu_to_le16 (int ) ;
 int mesh_plink_frame_tx (struct ieee80211_sub_if_data*,int ,int ,int ,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

u32 mesh_plink_deactivate(struct sta_info *sta)
{
 struct ieee80211_sub_if_data *sdata = sta->sdata;
 u32 changed;

 spin_lock_bh(&sta->lock);
 changed = __mesh_plink_deactivate(sta);
 sta->reason = cpu_to_le16(WLAN_REASON_MESH_PEER_CANCELED);
 mesh_plink_frame_tx(sdata, WLAN_SP_MESH_PEERING_CLOSE,
       sta->sta.addr, sta->llid, sta->plid,
       sta->reason);
 spin_unlock_bh(&sta->lock);

 return changed;
}
