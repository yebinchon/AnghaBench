
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sta_info {int dummy; } ;
struct ieee802_11_elems {int total_len; int ie_start; } ;
struct TYPE_3__ {int security; scalar_t__ user_mpm; } ;
struct TYPE_4__ {TYPE_1__ mesh; } ;
struct ieee80211_sub_if_data {int dev; TYPE_2__ u; } ;


 int GFP_KERNEL ;
 int IEEE80211_MESH_SEC_AUTHED ;
 struct sta_info* __mesh_sta_info_alloc (struct ieee80211_sub_if_data*,int *) ;
 int cfg80211_notify_new_peer_candidate (int ,int *,int ,int ,int ) ;

__attribute__((used)) static struct sta_info *
mesh_sta_info_alloc(struct ieee80211_sub_if_data *sdata, u8 *addr,
      struct ieee802_11_elems *elems)
{
 struct sta_info *sta = ((void*)0);


 if (sdata->u.mesh.user_mpm ||
     sdata->u.mesh.security & IEEE80211_MESH_SEC_AUTHED)
  cfg80211_notify_new_peer_candidate(sdata->dev, addr,
         elems->ie_start,
         elems->total_len,
         GFP_KERNEL);
 else
  sta = __mesh_sta_info_alloc(sdata, addr);

 return sta;
}
