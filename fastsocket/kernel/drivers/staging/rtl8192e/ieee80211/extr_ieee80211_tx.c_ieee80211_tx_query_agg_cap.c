
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct sk_buff {int priority; scalar_t__ data; } ;
struct ieee80211_hdr_1addr {int addr1; } ;
struct ieee80211_device {scalar_t__ pairwise_key_type; scalar_t__ iw_mode; scalar_t__ wpa_ie_len; int dev; int (* GetNmodeSupportBySecCfg ) (int ) ;TYPE_7__* pHTInfo; } ;
struct TYPE_17__ {int bAMPDUEnable; int ampdu_factor; int ampdu_density; } ;
typedef TYPE_5__ cb_desc ;
struct TYPE_21__ {int PacketLength; } ;
struct TYPE_13__ {int (* GetNmodeSupportBySecCfgHandler ) (TYPE_8__*) ;} ;
struct TYPE_20__ {TYPE_1__ HalFunc; } ;
struct TYPE_19__ {int ForcedAMPDUMode; int ForcedAMPDUFactor; int ForcedMPDUDensity; int CurrentMPDUDensity; int CurrentAMPDUFactor; scalar_t__ bCurrentAMPDUEnable; int bEnableHT; int bCurrentHTSupport; } ;
struct TYPE_14__ {int SeqNum; } ;
struct TYPE_15__ {TYPE_2__ field; } ;
struct TYPE_16__ {int bValid; TYPE_3__ BaStartSeqCtrl; } ;
struct TYPE_18__ {int bUsingBa; int TxCurSeq; TYPE_4__ TxAdmittedBARecord; } ;
typedef TYPE_6__* PTX_TS_RECORD ;
typedef int PTS_COMMON_INFO ;
typedef TYPE_7__* PRT_HIGH_THROUGHPUT ;


 TYPE_8__* Adapter ;
 int GetTs (struct ieee80211_device*,int *,int ,int ,int ,int) ;



 scalar_t__ IW_MODE_INFRA ;
 int IsQoSDataFrame (scalar_t__) ;
 scalar_t__ KEY_TYPE_NA ;
 scalar_t__ SN_LESS (int ,int) ;
 int TX_DIR ;
 int TsStartAddBaProcess (struct ieee80211_device*,TYPE_6__*) ;
 scalar_t__ is_broadcast_ether_addr (int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 TYPE_9__* pTcb ;
 int printk (char*) ;
 int stub1 (TYPE_8__*) ;
 int stub2 (int ) ;

void ieee80211_tx_query_agg_cap(struct ieee80211_device* ieee, struct sk_buff* skb, cb_desc* tcb_desc)
{
 PRT_HIGH_THROUGHPUT pHTInfo = ieee->pHTInfo;
 PTX_TS_RECORD pTxTs = ((void*)0);
 struct ieee80211_hdr_1addr* hdr = (struct ieee80211_hdr_1addr*)skb->data;

 if (!pHTInfo->bCurrentHTSupport||!pHTInfo->bEnableHT)
  return;
 if (!IsQoSDataFrame(skb->data))
  return;

 if (is_multicast_ether_addr(hdr->addr1) || is_broadcast_ether_addr(hdr->addr1))
  return;
 if(!ieee->GetNmodeSupportBySecCfg(ieee->dev))
 {
  return;
 }

 if(pHTInfo->bCurrentAMPDUEnable)
 {
  if (!GetTs(ieee, (PTS_COMMON_INFO*)(&pTxTs), hdr->addr1, skb->priority, TX_DIR, 1))
  {
   printk("===>can't get TS\n");
   return;
  }
  if (pTxTs->TxAdmittedBARecord.bValid == 0)
  {

   if (ieee->wpa_ie_len && (ieee->pairwise_key_type == KEY_TYPE_NA))
   ;
   else
   TsStartAddBaProcess(ieee, pTxTs);
   goto FORCED_AGG_SETTING;
  }
  else if (pTxTs->bUsingBa == 0)
  {
   if (SN_LESS(pTxTs->TxAdmittedBARecord.BaStartSeqCtrl.field.SeqNum, (pTxTs->TxCurSeq+1)%4096))
    pTxTs->bUsingBa = 1;
   else
    goto FORCED_AGG_SETTING;
  }

  if (ieee->iw_mode == IW_MODE_INFRA)
  {
   tcb_desc->bAMPDUEnable = 1;
   tcb_desc->ampdu_factor = pHTInfo->CurrentAMPDUFactor;
   tcb_desc->ampdu_density = pHTInfo->CurrentMPDUDensity;
  }
 }
FORCED_AGG_SETTING:
 switch(pHTInfo->ForcedAMPDUMode )
 {
  case 130:
   break;

  case 128:
   tcb_desc->bAMPDUEnable = 1;
   tcb_desc->ampdu_density = pHTInfo->ForcedMPDUDensity;
   tcb_desc->ampdu_factor = pHTInfo->ForcedAMPDUFactor;
   break;

  case 129:
   tcb_desc->bAMPDUEnable = 0;
   tcb_desc->ampdu_density = 0;
   tcb_desc->ampdu_factor = 0;
   break;

 }
  return;
}
