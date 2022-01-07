
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sta_info {int plink_state; } ;
struct ieee80211_sub_if_data {TYPE_1__* local; } ;
struct TYPE_2__ {scalar_t__ num_sta; } ;


 int GFP_KERNEL ;
 int IEEE80211_STA_ASSOC ;
 int IEEE80211_STA_AUTH ;
 int IEEE80211_STA_AUTHORIZED ;
 scalar_t__ MESH_MAX_PLINKS ;
 int NL80211_PLINK_LISTEN ;
 int WLAN_STA_WME ;
 int set_sta_flag (struct sta_info*,int ) ;
 struct sta_info* sta_info_alloc (struct ieee80211_sub_if_data*,int *,int ) ;
 int sta_info_pre_move_state (struct sta_info*,int ) ;

__attribute__((used)) static struct sta_info *
__mesh_sta_info_alloc(struct ieee80211_sub_if_data *sdata, u8 *hw_addr)
{
 struct sta_info *sta;

 if (sdata->local->num_sta >= MESH_MAX_PLINKS)
  return ((void*)0);

 sta = sta_info_alloc(sdata, hw_addr, GFP_KERNEL);
 if (!sta)
  return ((void*)0);

 sta->plink_state = NL80211_PLINK_LISTEN;

 sta_info_pre_move_state(sta, IEEE80211_STA_AUTH);
 sta_info_pre_move_state(sta, IEEE80211_STA_ASSOC);
 sta_info_pre_move_state(sta, IEEE80211_STA_AUTHORIZED);

 set_sta_flag(sta, WLAN_STA_WME);

 return sta;
}
