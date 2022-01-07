
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct ieee80211_if_mesh {scalar_t__ mesh_id_len; int mesh_id; } ;
struct TYPE_2__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;


 int ENOMEM ;
 int WLAN_EID_MESH_ID ;
 int memcpy (int *,int ,scalar_t__) ;
 int * skb_put (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_tailroom (struct sk_buff*) ;

int mesh_add_meshid_ie(struct ieee80211_sub_if_data *sdata, struct sk_buff *skb)
{
 struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;
 u8 *pos;

 if (skb_tailroom(skb) < 2 + ifmsh->mesh_id_len)
  return -ENOMEM;

 pos = skb_put(skb, 2 + ifmsh->mesh_id_len);
 *pos++ = WLAN_EID_MESH_ID;
 *pos++ = ifmsh->mesh_id_len;
 if (ifmsh->mesh_id_len)
  memcpy(pos, ifmsh->mesh_id, ifmsh->mesh_id_len);

 return 0;
}
