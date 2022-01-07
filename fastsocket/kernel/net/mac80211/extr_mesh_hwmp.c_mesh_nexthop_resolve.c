
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct mesh_path {int flags; int frame_queue; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_hdr {int frame_control; int * addr3; } ;


 int ENOENT ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_INTFL_NEED_TXPROCESSING ;
 scalar_t__ IS_ERR (struct mesh_path*) ;
 scalar_t__ MESH_FRAME_QUEUE_LEN ;
 int MESH_PATH_RESOLVING ;
 int PREQ_Q_F_START ;
 int PTR_ERR (struct mesh_path*) ;
 scalar_t__ ieee80211_is_qos_nullfunc (int ) ;
 int ieee80211_set_qos_hdr (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 int mesh_nexthop_lookup (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 struct mesh_path* mesh_path_add (struct ieee80211_sub_if_data*,int *) ;
 int mesh_path_discard_frame (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 struct mesh_path* mesh_path_lookup (struct ieee80211_sub_if_data*,int *) ;
 int mesh_queue_preq (struct mesh_path*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct sk_buff* skb_dequeue (int *) ;
 scalar_t__ skb_queue_len (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

int mesh_nexthop_resolve(struct ieee80211_sub_if_data *sdata,
    struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct mesh_path *mpath;
 struct sk_buff *skb_to_free = ((void*)0);
 u8 *target_addr = hdr->addr3;
 int err = 0;


 if (ieee80211_is_qos_nullfunc(hdr->frame_control))
  return 0;

 rcu_read_lock();
 err = mesh_nexthop_lookup(sdata, skb);
 if (!err)
  goto endlookup;


 mpath = mesh_path_lookup(sdata, target_addr);
 if (!mpath) {
  mpath = mesh_path_add(sdata, target_addr);
  if (IS_ERR(mpath)) {
   mesh_path_discard_frame(sdata, skb);
   err = PTR_ERR(mpath);
   goto endlookup;
  }
 }

 if (!(mpath->flags & MESH_PATH_RESOLVING))
  mesh_queue_preq(mpath, PREQ_Q_F_START);

 if (skb_queue_len(&mpath->frame_queue) >= MESH_FRAME_QUEUE_LEN)
  skb_to_free = skb_dequeue(&mpath->frame_queue);

 info->flags |= IEEE80211_TX_INTFL_NEED_TXPROCESSING;
 ieee80211_set_qos_hdr(sdata, skb);
 skb_queue_tail(&mpath->frame_queue, skb);
 err = -ENOENT;
 if (skb_to_free)
  mesh_path_discard_frame(sdata, skb_to_free);

endlookup:
 rcu_read_unlock();
 return err;
}
