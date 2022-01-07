
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u8 ;
struct urb {scalar_t__ status; scalar_t__ context; } ;
struct sk_buff {scalar_t__ len; scalar_t__ cb; } ;
struct TYPE_7__ {int txbytesunicast; int txoktotal; } ;
struct r8192_priv {TYPE_5__* ieee80211; int * tx_pending; TYPE_2__ stats; } ;
struct net_device {int dummy; } ;
struct TYPE_9__ {size_t queue_index; } ;
typedef TYPE_4__ cb_desc ;
struct TYPE_8__ {int tx_errors; } ;
struct TYPE_6__ {int NumTxOkInPeriod; } ;
struct TYPE_10__ {int (* softmac_hard_start_xmit ) (struct sk_buff*,struct net_device*) ;int * skb_waitQ; int queue_stop; scalar_t__ ack_tx_to_ieee; TYPE_3__ stats; scalar_t__ tx_headroom; TYPE_1__ LinkDetectInfo; } ;


 size_t BEACON_QUEUE ;
 scalar_t__ MAX_DEV_ADDR_SIZE ;
 size_t MGNT_QUEUE ;
 scalar_t__ TXCMD_QUEUE ;
 int atomic_dec (int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int ieee80211_ps_tx_ack (TYPE_5__*,int) ;
 int memcpy (struct net_device**,struct net_device*,int) ;
 scalar_t__ rtl8192_is_tx_queue_empty (struct net_device*) ;
 struct sk_buff* skb_dequeue (int *) ;
 scalar_t__ skb_queue_len (int *) ;
 int stub1 (struct sk_buff*,struct net_device*) ;
 int usb_free_urb (struct urb*) ;

__attribute__((used)) static void rtl8192_tx_isr(struct urb *tx_urb)
{
 struct sk_buff *skb = (struct sk_buff*)tx_urb->context;
 struct net_device *dev = ((void*)0);
 struct r8192_priv *priv = ((void*)0);
 cb_desc *tcb_desc = (cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
 u8 queue_index = tcb_desc->queue_index;



 memcpy(&dev,(struct net_device*)(skb->cb),sizeof(struct net_device*));
 priv = ieee80211_priv(dev);

 if(tcb_desc->queue_index != TXCMD_QUEUE) {
  if(tx_urb->status == 0) {




   priv->stats.txoktotal++;
   priv->ieee80211->LinkDetectInfo.NumTxOkInPeriod++;
   priv->stats.txbytesunicast += (skb->len - priv->ieee80211->tx_headroom);
  } else {
   priv->ieee80211->stats.tx_errors++;


  }
 }


 if(skb != ((void*)0)) {
  dev_kfree_skb_any(skb);
  usb_free_urb(tx_urb);
  atomic_dec(&priv->tx_pending[queue_index]);
 }

 {
 if (queue_index == MGNT_QUEUE){
        if (priv->ieee80211->ack_tx_to_ieee){
            if (rtl8192_is_tx_queue_empty(dev)){
                priv->ieee80211->ack_tx_to_ieee = 0;
                ieee80211_ps_tx_ack(priv->ieee80211, 1);
            }
        }
    }

  if(queue_index != BEACON_QUEUE) {

   if((skb_queue_len(&priv->ieee80211->skb_waitQ[queue_index]) != 0)&& (!(priv->ieee80211->queue_stop))) {

    if(((void*)0) != (skb = skb_dequeue(&(priv->ieee80211->skb_waitQ[queue_index]))))
     priv->ieee80211->softmac_hard_start_xmit(skb, dev);

    return;
   }
  }
 }
}
