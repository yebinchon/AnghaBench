
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct r8192_priv {TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int * skb_aggQ; int * skb_waitQ; } ;
typedef int RESET_TYPE ;


 size_t BEACON_QUEUE ;
 int COMP_RESET ;
 scalar_t__ HalTxCheckStuck819xUsb (struct net_device*) ;
 int RESET_TYPE_NORESET ;
 int RESET_TYPE_SILENT ;
 int RT_TRACE (int ,char*) ;
 size_t TXCMD_QUEUE ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 scalar_t__ skb_queue_len (int *) ;

RESET_TYPE
TxCheckStuck(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 u8 QueueID;


 bool bCheckFwTxCnt = 0;
      for (QueueID = 0; QueueID<=BEACON_QUEUE;QueueID ++)
      {
        if(QueueID == TXCMD_QUEUE)
           continue;

        if((skb_queue_len(&priv->ieee80211->skb_waitQ[QueueID]) == 0) && (skb_queue_len(&priv->ieee80211->skb_aggQ[QueueID]) == 0))
     continue;


              bCheckFwTxCnt = 1;
      }




 if(bCheckFwTxCnt)
 {
  if(HalTxCheckStuck819xUsb(dev))
  {
   RT_TRACE(COMP_RESET, "TxCheckStuck(): Fw indicates no Tx condition! \n");
   return RESET_TYPE_SILENT;
  }
 }

 return RESET_TYPE_NORESET;
}
