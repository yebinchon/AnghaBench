
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct r8192_priv {struct ieee80211_device* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int tx_bytes; int tx_packets; } ;
struct ieee80211_device {scalar_t__ (* check_nic_enough_desc ) (struct net_device*,int) ;TYPE_1__ stats; int (* softmac_data_hard_start_xmit ) (struct sk_buff*,struct net_device*,int ) ;int * skb_waitQ; } ;


 int BK_QUEUE ;
 int MGNT_QUEUE ;
 int TXCMD_QUEUE ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_empty (int *) ;
 scalar_t__ stub1 (struct net_device*,int) ;
 int stub2 (struct sk_buff*,struct net_device*,int ) ;

__attribute__((used)) static void rtl8192_tx_resume(struct net_device *dev)
{
 struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 struct ieee80211_device *ieee = priv->ieee80211;
 struct sk_buff *skb;
 int queue_index;

 for(queue_index = BK_QUEUE; queue_index < TXCMD_QUEUE;queue_index++) {
  while((!skb_queue_empty(&ieee->skb_waitQ[queue_index]))&&
    (priv->ieee80211->check_nic_enough_desc(dev,queue_index) > 0)) {

   skb = skb_dequeue(&ieee->skb_waitQ[queue_index]);

   ieee->softmac_data_hard_start_xmit(skb,dev,0 );






  }
 }
}
