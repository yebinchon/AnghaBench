
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int priority; int data; } ;
struct ieee80211_device {int dummy; } ;
struct TYPE_2__ {int TxCurSeq; } ;
typedef TYPE_1__* PTX_TS_RECORD ;
typedef int PTS_COMMON_INFO ;


 int GetTs (struct ieee80211_device*,int *,int *,int ,int ,int) ;
 scalar_t__ IsQoSDataFrame (int ) ;
 int TX_DIR ;
 scalar_t__ is_broadcast_ether_addr (int *) ;
 scalar_t__ is_multicast_ether_addr (int *) ;

void ieee80211_query_seqnum(struct ieee80211_device*ieee, struct sk_buff* skb, u8* dst)
{
 if (is_multicast_ether_addr(dst) || is_broadcast_ether_addr(dst))
  return;
 if (IsQoSDataFrame(skb->data))
 {
  PTX_TS_RECORD pTS = ((void*)0);
  if (!GetTs(ieee, (PTS_COMMON_INFO*)(&pTS), dst, skb->priority, TX_DIR, 1))
  {
   return;
  }
  pTS->TxCurSeq = (pTS->TxCurSeq+1)%4096;
 }
}
