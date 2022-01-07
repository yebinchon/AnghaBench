
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int priority; scalar_t__ data; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_sub_if_data {int noack_map; int vif; } ;
struct ieee80211_hdr {int frame_control; int addr1; } ;


 int BIT (int) ;
 int IEEE80211_QOS_CTL_ACK_POLICY_NOACK ;
 int IEEE80211_QOS_CTL_EOSP ;
 int IEEE80211_QOS_CTL_MESH_CONTROL_PRESENT ;
 int IEEE80211_QOS_CTL_MESH_PS_LEVEL ;
 int IEEE80211_QOS_CTL_RSPI ;
 int IEEE80211_QOS_CTL_TAG1D_MASK ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_NO_ACK ;
 int* ieee80211_get_qos_ctl (struct ieee80211_hdr*) ;
 int ieee80211_is_data_qos (int ) ;
 int ieee80211_is_qos_nullfunc (int ) ;
 scalar_t__ ieee80211_vif_is_mesh (int *) ;
 scalar_t__ is_multicast_ether_addr (int ) ;

void ieee80211_set_qos_hdr(struct ieee80211_sub_if_data *sdata,
      struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr = (void *)skb->data;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 u8 *p;
 u8 ack_policy, tid;

 if (!ieee80211_is_data_qos(hdr->frame_control))
  return;

 p = ieee80211_get_qos_ctl(hdr);
 tid = skb->priority & IEEE80211_QOS_CTL_TAG1D_MASK;


 ack_policy = *p & IEEE80211_QOS_CTL_EOSP;

 if (is_multicast_ether_addr(hdr->addr1) ||
     sdata->noack_map & BIT(tid)) {
  ack_policy |= IEEE80211_QOS_CTL_ACK_POLICY_NOACK;
  info->flags |= IEEE80211_TX_CTL_NO_ACK;
 }


 *p++ = ack_policy | tid;
 if (ieee80211_vif_is_mesh(&sdata->vif)) {

  *p &= ((IEEE80211_QOS_CTL_RSPI |
   IEEE80211_QOS_CTL_MESH_PS_LEVEL) >> 8);


  if (!ieee80211_is_qos_nullfunc(hdr->frame_control))
   *p |= (IEEE80211_QOS_CTL_MESH_CONTROL_PRESENT >> 8);
 } else {
  *p = 0;
 }
}
