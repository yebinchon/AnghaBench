
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int txbytesunicast; int rxbytesunicast; } ;
struct r8192_priv {TYPE_2__ stats; TYPE_1__* ieee80211; } ;
struct net_device {int * TcbCountInAggrQueue; int * TcbAggrQueue; } ;
struct TYPE_6__ {int IOTAction; int bCurrent_AMSDU_Support; int bCurrentAMPDUEnable; } ;
struct TYPE_4__ {TYPE_3__* pHTInfo; } ;
typedef scalar_t__ PRT_TCB ;
typedef TYPE_3__* PRT_HIGH_THROUGHPUT ;


 scalar_t__ DESC92S_RATE54M ;
 int HT_IOT_ACT_AMSDU_ENABLE ;
 int HT_IOT_ACT_HYBRID_AGGREGATION ;
 int INIMCS_SEL ;
 size_t MAX_TX_QUEUE ;
 int PreTransmitTCB (struct net_device*,scalar_t__) ;
 size_t QueueId ;
 int RTIsListEmpty (int *) ;
 scalar_t__ RTRemoveHeadList (int *) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 scalar_t__ pTcb ;
 scalar_t__ read_nic_byte (struct net_device*,int ) ;

__attribute__((used)) static void dm_CheckAggrPolicy(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 PRT_HIGH_THROUGHPUT pHTInfo = priv->ieee80211->pHTInfo;


 bool bAmsduEnable = 0;

 static u8 lastTxOkCnt = 0;
 static u8 lastRxOkCnt = 0;
 u8 curTxOkCnt = 0;
 u8 curRxOkCnt = 0;


 if(priv->ieee80211->pHTInfo->IOTAction & HT_IOT_ACT_HYBRID_AGGREGATION)
 {
  if(read_nic_byte(dev, INIMCS_SEL) > DESC92S_RATE54M)
   bAmsduEnable = 1;
 }
 else if(priv->ieee80211->pHTInfo->IOTAction & HT_IOT_ACT_AMSDU_ENABLE)
 {
  if(read_nic_byte(dev, INIMCS_SEL) > DESC92S_RATE54M)
  {
   curTxOkCnt = priv->stats.txbytesunicast - lastTxOkCnt;
   curRxOkCnt = priv->stats.rxbytesunicast - lastRxOkCnt;

   if(curRxOkCnt <= 4*curTxOkCnt)
    bAmsduEnable = 1;
  }
 }
 else
 {

  return;
 }


 if(bAmsduEnable && !pHTInfo->bCurrent_AMSDU_Support)
 {
  pHTInfo->bCurrent_AMSDU_Support = 1;
 }
 else if(!bAmsduEnable && pHTInfo->bCurrent_AMSDU_Support)
 {
 }


 if(priv->ieee80211->pHTInfo->IOTAction & HT_IOT_ACT_AMSDU_ENABLE)
 {
  if(!bAmsduEnable)
   pHTInfo->bCurrentAMPDUEnable = 1;
 }


 lastTxOkCnt = priv->stats.txbytesunicast;
 lastRxOkCnt = priv->stats.rxbytesunicast;
}
