
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ cb; scalar_t__ data; } ;
struct ieee80211_hdr_3addr {void* seq_ctl; } ;
struct ieee80211_device {short softmac_features; int* seq_ctrl; int mgmt_tx_lock; int dev; int (* softmac_hard_start_xmit ) (struct sk_buff*,int ) ;int * skb_waitQ; scalar_t__ queue_stop; int (* check_nic_enough_desc ) (int ,size_t) ;int lock; int basic_rate; int (* softmac_data_hard_start_xmit ) (struct sk_buff*,int ,int ) ;} ;
struct TYPE_2__ {size_t queue_index; int RATRIndex; int bTxDisableRateFallBack; int bTxUseDriverAssingedRate; int data_rate; } ;
typedef TYPE_1__ cb_desc ;


 short IEEE_SOFTMAC_SINGLE_QUEUE ;
 size_t MGNT_QUEUE ;
 int MgntQuery_MgntFrameTxRate (struct ieee80211_device*) ;
 void* cpu_to_le16 (int) ;
 int enqueue_mgmt (struct ieee80211_device*,struct sk_buff*) ;
 int ieee80211_sta_wakeup (struct ieee80211_device*,int ) ;
 scalar_t__ skb_queue_len (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct sk_buff*,int ,int ) ;
 int stub2 (int ,size_t) ;
 int stub3 (struct sk_buff*,int ) ;

inline void softmac_mgmt_xmit(struct sk_buff *skb, struct ieee80211_device *ieee)
{
 unsigned long flags;
 short single = ieee->softmac_features & IEEE_SOFTMAC_SINGLE_QUEUE;
 struct ieee80211_hdr_3addr *header=
  (struct ieee80211_hdr_3addr *) skb->data;

 cb_desc *tcb_desc = (cb_desc *)(skb->cb + 8);
 spin_lock_irqsave(&ieee->lock, flags);


 ieee80211_sta_wakeup(ieee,0);

 tcb_desc->queue_index = MGNT_QUEUE;
 tcb_desc->data_rate = MgntQuery_MgntFrameTxRate(ieee);
        tcb_desc->RATRIndex = 7;
        tcb_desc->bTxDisableRateFallBack = 1;
        tcb_desc->bTxUseDriverAssingedRate = 1;

 if(single){
  if(ieee->queue_stop){
   enqueue_mgmt(ieee,skb);
  }else{
   header->seq_ctl = cpu_to_le16(ieee->seq_ctrl[0]<<4);

   if (ieee->seq_ctrl[0] == 0xFFF)
    ieee->seq_ctrl[0] = 0;
   else
    ieee->seq_ctrl[0]++;



   ieee->softmac_data_hard_start_xmit(skb,ieee->dev,ieee->basic_rate);

  }

  spin_unlock_irqrestore(&ieee->lock, flags);
 }else{
  spin_unlock_irqrestore(&ieee->lock, flags);
  spin_lock_irqsave(&ieee->mgmt_tx_lock, flags);

  header->seq_ctl = cpu_to_le16(ieee->seq_ctrl[0] << 4);

  if (ieee->seq_ctrl[0] == 0xFFF)
   ieee->seq_ctrl[0] = 0;
  else
   ieee->seq_ctrl[0]++;


  if(!ieee->check_nic_enough_desc(ieee->dev,tcb_desc->queue_index)|| (skb_queue_len(&ieee->skb_waitQ[tcb_desc->queue_index]) != 0)|| (ieee->queue_stop) ) {







   skb_queue_tail(&ieee->skb_waitQ[tcb_desc->queue_index], skb);
  } else {

   ieee->softmac_hard_start_xmit(skb,ieee->dev);

  }
  spin_unlock_irqrestore(&ieee->mgmt_tx_lock, flags);
 }
}
