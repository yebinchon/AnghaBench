
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ cb; } ;
struct r8192_priv {TYPE_2__* ieee80211; } ;
struct TYPE_3__ {int data_rate; int RATRIndex; int bTxDisableRateFallBack; int bTxUseDriverAssingedRate; int queue_index; } ;
typedef TYPE_1__ cb_desc ;
struct TYPE_4__ {int dev; int tx_headroom; } ;


 int BEACON_QUEUE ;
 struct sk_buff* ieee80211_get_beacon (TYPE_2__*) ;
 int rtl8192_tx (int ,struct sk_buff*) ;
 int skb_push (struct sk_buff*,int ) ;

void rtl8192_prepare_beacon(struct r8192_priv *priv)
{
 struct sk_buff *skb;

 cb_desc *tcb_desc;

 skb = ieee80211_get_beacon(priv->ieee80211);
 tcb_desc = (cb_desc *)(skb->cb + 8);



 tcb_desc->queue_index = BEACON_QUEUE;

 tcb_desc->data_rate = 2;
 tcb_desc->RATRIndex = 7;
 tcb_desc->bTxDisableRateFallBack = 1;
 tcb_desc->bTxUseDriverAssingedRate = 1;

 skb_push(skb, priv->ieee80211->tx_headroom);
 if(skb){
  rtl8192_tx(priv->ieee80211->dev,skb);
 }

}
