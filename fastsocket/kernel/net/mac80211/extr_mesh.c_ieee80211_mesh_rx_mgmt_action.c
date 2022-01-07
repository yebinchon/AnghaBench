
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_rx_status {int dummy; } ;
struct TYPE_5__ {int action_code; } ;
struct TYPE_6__ {TYPE_1__ self_prot; } ;
struct TYPE_7__ {int category; TYPE_2__ u; } ;
struct TYPE_8__ {TYPE_3__ action; } ;
struct ieee80211_mgmt {TYPE_4__ u; } ;







 int mesh_action_is_path_sel (struct ieee80211_mgmt*) ;
 int mesh_rx_path_sel_frame (struct ieee80211_sub_if_data*,struct ieee80211_mgmt*,size_t) ;
 int mesh_rx_plink_frame (struct ieee80211_sub_if_data*,struct ieee80211_mgmt*,size_t,struct ieee80211_rx_status*) ;

__attribute__((used)) static void ieee80211_mesh_rx_mgmt_action(struct ieee80211_sub_if_data *sdata,
       struct ieee80211_mgmt *mgmt,
       size_t len,
       struct ieee80211_rx_status *rx_status)
{
 switch (mgmt->u.action.category) {
 case 131:
  switch (mgmt->u.action.u.self_prot.action_code) {
  case 128:
  case 130:
  case 129:
   mesh_rx_plink_frame(sdata, mgmt, len, rx_status);
   break;
  }
  break;
 case 132:
  if (mesh_action_is_path_sel(mgmt))
   mesh_rx_path_sel_frame(sdata, mgmt, len);
  break;
 }
}
