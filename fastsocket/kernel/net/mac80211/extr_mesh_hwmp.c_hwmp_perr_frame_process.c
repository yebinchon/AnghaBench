
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_7__ {int addr; } ;
struct sta_info {TYPE_3__ sta; } ;
struct mesh_path {int flags; int state_lock; int sn; } ;
struct TYPE_8__ {int dot11MeshForwarding; } ;
struct TYPE_6__ {int dropped_frames_ttl; } ;
struct ieee80211_if_mesh {TYPE_4__ mshcfg; TYPE_2__ mshstats; } ;
struct TYPE_5__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;
struct ieee80211_mgmt {int* sa; } ;


 int MESH_PATH_ACTIVE ;
 int MESH_PATH_SN_VALID ;
 int* PERR_IE_TARGET_ADDR (int const*) ;
 int PERR_IE_TARGET_RCODE (int const*) ;
 int PERR_IE_TARGET_SN (int const*) ;
 int PERR_IE_TTL (int const*) ;
 scalar_t__ SN_GT (int ,int ) ;
 int broadcast_addr ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 scalar_t__ ether_addr_equal (int const*,int ) ;
 int mesh_path_error_tx (struct ieee80211_sub_if_data*,int,int const*,int ,int ,int ) ;
 struct mesh_path* mesh_path_lookup (struct ieee80211_sub_if_data*,int const*) ;
 struct sta_info* next_hop_deref_protected (struct mesh_path*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void hwmp_perr_frame_process(struct ieee80211_sub_if_data *sdata,
        struct ieee80211_mgmt *mgmt,
        const u8 *perr_elem)
{
 struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;
 struct mesh_path *mpath;
 u8 ttl;
 const u8 *ta, *target_addr;
 u32 target_sn;
 u16 target_rcode;

 ta = mgmt->sa;
 ttl = PERR_IE_TTL(perr_elem);
 if (ttl <= 1) {
  ifmsh->mshstats.dropped_frames_ttl++;
  return;
 }
 ttl--;
 target_addr = PERR_IE_TARGET_ADDR(perr_elem);
 target_sn = PERR_IE_TARGET_SN(perr_elem);
 target_rcode = PERR_IE_TARGET_RCODE(perr_elem);

 rcu_read_lock();
 mpath = mesh_path_lookup(sdata, target_addr);
 if (mpath) {
  struct sta_info *sta;

  spin_lock_bh(&mpath->state_lock);
  sta = next_hop_deref_protected(mpath);
  if (mpath->flags & MESH_PATH_ACTIVE &&
      ether_addr_equal(ta, sta->sta.addr) &&
      (!(mpath->flags & MESH_PATH_SN_VALID) ||
      SN_GT(target_sn, mpath->sn))) {
   mpath->flags &= ~MESH_PATH_ACTIVE;
   mpath->sn = target_sn;
   spin_unlock_bh(&mpath->state_lock);
   if (!ifmsh->mshcfg.dot11MeshForwarding)
    goto endperr;
   mesh_path_error_tx(sdata, ttl, target_addr,
        cpu_to_le32(target_sn),
        cpu_to_le16(target_rcode),
        broadcast_addr);
  } else
   spin_unlock_bh(&mpath->state_lock);
 }
endperr:
 rcu_read_unlock();
}
