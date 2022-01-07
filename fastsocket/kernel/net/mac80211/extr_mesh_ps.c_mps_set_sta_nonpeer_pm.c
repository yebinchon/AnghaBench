
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct sta_info {int nonpeer_pm; TYPE_1__ sta; int sdata; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef enum nl80211_mesh_power_mode { ____Placeholder_nl80211_mesh_power_mode } nl80211_mesh_power_mode ;


 int NL80211_MESH_POWER_ACTIVE ;
 int NL80211_MESH_POWER_DEEP_SLEEP ;
 scalar_t__ ieee80211_has_pm (int ) ;
 int ieee80211_mps_sta_status_update (struct sta_info*) ;
 int mps_dbg (int ,char*,int ,int) ;

__attribute__((used)) static void mps_set_sta_nonpeer_pm(struct sta_info *sta,
       struct ieee80211_hdr *hdr)
{
 enum nl80211_mesh_power_mode pm;

 if (ieee80211_has_pm(hdr->frame_control))
  pm = NL80211_MESH_POWER_DEEP_SLEEP;
 else
  pm = NL80211_MESH_POWER_ACTIVE;

 if (sta->nonpeer_pm == pm)
  return;

 mps_dbg(sta->sdata, "STA %pM sets non-peer mode to %d\n",
  sta->sta.addr, pm);

 sta->nonpeer_pm = pm;

 ieee80211_mps_sta_status_update(sta);
}
