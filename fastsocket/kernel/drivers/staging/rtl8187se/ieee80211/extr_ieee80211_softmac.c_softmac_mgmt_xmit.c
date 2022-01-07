
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct ieee80211_hdr_3addr {void* seq_ctl; } ;
struct ieee80211_device {short softmac_features; int* seq_ctrl; int mgmt_tx_lock; TYPE_1__* dev; int (* softmac_hard_start_xmit ) (struct sk_buff*,TYPE_1__*) ;int lock; int basic_rate; int (* softmac_data_hard_start_xmit ) (struct sk_buff*,TYPE_1__*,int ) ;scalar_t__ queue_stop; } ;
struct TYPE_3__ {void* trans_start; } ;


 short IEEE_SOFTMAC_SINGLE_QUEUE ;
 void* cpu_to_le16 (int) ;
 int enqueue_mgmt (struct ieee80211_device*,struct sk_buff*) ;
 int ieee80211_sta_wakeup (struct ieee80211_device*,int ) ;
 void* jiffies ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct sk_buff*,TYPE_1__*,int ) ;
 int stub2 (struct sk_buff*,TYPE_1__*) ;

inline void softmac_mgmt_xmit(struct sk_buff *skb, struct ieee80211_device *ieee)
{
 unsigned long flags;
 short single = ieee->softmac_features & IEEE_SOFTMAC_SINGLE_QUEUE;
 struct ieee80211_hdr_3addr *header=
  (struct ieee80211_hdr_3addr *) skb->data;


 spin_lock_irqsave(&ieee->lock, flags);


 ieee80211_sta_wakeup(ieee,0);

 if(single){
  if(ieee->queue_stop){

   enqueue_mgmt(ieee,skb);
  }else{
   header->seq_ctl = cpu_to_le16(ieee->seq_ctrl[0]<<4);

   if (ieee->seq_ctrl[0] == 0xFFF)
    ieee->seq_ctrl[0] = 0;
   else
    ieee->seq_ctrl[0]++;


   ieee->dev->trans_start = jiffies;
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


  ieee->dev->trans_start = jiffies;
  ieee->softmac_hard_start_xmit(skb,ieee->dev);

  spin_unlock_irqrestore(&ieee->mgmt_tx_lock, flags);
 }
}
