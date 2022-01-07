
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ action_code; } ;
struct TYPE_6__ {TYPE_1__ mesh_action; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_8__ {TYPE_3__ action; } ;
struct ieee80211_mgmt {TYPE_4__ u; } ;


 scalar_t__ WLAN_MESH_ACTION_HWMP_PATH_SELECTION ;

bool mesh_action_is_path_sel(struct ieee80211_mgmt *mgmt)
{
 return (mgmt->u.action.u.mesh_action.action_code ==
   WLAN_MESH_ACTION_HWMP_PATH_SELECTION);
}
