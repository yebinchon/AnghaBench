
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_9__ {scalar_t__ bdRT2RTAggregation; } ;
struct TYPE_10__ {TYPE_1__ bssht; } ;
struct ieee80211_device {scalar_t__ pairwise_key_type; int HTHighestOperaRate; int HTCurrentOperaRate; int dot11HTOperationalRateSet; TYPE_2__ current_network; TYPE_3__* pHTInfo; } ;
struct TYPE_14__ {int Length; } ;
struct TYPE_13__ {int ShortGI20Mhz; int ShortGI40Mhz; int DssCCk; scalar_t__ MaxAMSDUSize; scalar_t__ MaxRxAMPDUFactor; int MPDUDensity; int* MCS; scalar_t__ MimoPwrSave; scalar_t__ ChlWidth; } ;
struct TYPE_12__ {int RecommemdedTxWidth; int OptMode; scalar_t__ ExtChlOffset; } ;
struct TYPE_11__ {int bCurrentHTSupport; int bCurTxBW40MHz; int bCurShortGI20MHz; int bCurShortGI40MHz; int bCurSuppCCK; int nAMSDU_MaxSize; int nCurrent_AMSDU_MaxSize; int bCurrentAMPDUEnable; int bAMPDUEnable; scalar_t__ AMPDU_Factor; scalar_t__ CurrentAMPDUFactor; int MPDU_Density; int CurrentMPDUDensity; int ForcedAMSDUMaxSize; scalar_t__ PeerMimoPs; int CurrentOpMode; int bRegRxReorderEnable; int bCurRxReorderEnable; int IOTAction; int ForcedAMSDUMode; int bRegRT2RTAggregation; int bAMSDU_Support; int bCurrent_AMSDU_Support; scalar_t__ bRegSuppCCK; scalar_t__ bRegShortGI40MHz; scalar_t__ bRegShortGI20MHz; int * PeerHTInfoBuf; int * PeerHTCapBuf; } ;
typedef TYPE_3__* PRT_HIGH_THROUGHPUT ;
typedef TYPE_4__* PHT_INFORMATION_ELE ;
typedef TYPE_5__* PHT_CAPABILITY_ELE ;
typedef int HT_EXTCHNL_OFFSET ;
typedef int HT_CHANNEL_WIDTH ;
typedef int HT_CAPABILITY_ELE ;
typedef int EWC11NHTInfo ;
typedef int EWC11NHTCap ;


 int EID_Vendor ;
 int HTFilterMCSRate (struct ieee80211_device*,int*,int ) ;
 int HTGetHighestMCSRate (struct ieee80211_device*,int ,int*) ;
 int HTSetConnectBwMode (struct ieee80211_device*,int ,int ) ;
 int HT_AGG_FORCE_ENABLE ;
 scalar_t__ HT_AGG_SIZE_32K ;
 scalar_t__ HT_AGG_SIZE_64K ;
 int HT_IOT_ACT_TX_USE_AMSDU_8K ;
 int IEEE80211_DEBUG (int,char*) ;
 int IEEE80211_DEBUG_DATA (int,TYPE_5__*,int) ;
 int IEEE80211_DL_DATA ;
 int IEEE80211_DL_ERR ;
 int IEEE80211_DL_HT ;
 scalar_t__ KEY_TYPE_NA ;
 int* MCS_FILTER_1SS ;
 int* MCS_FILTER_ALL ;
 scalar_t__ MIMO_PS_STATIC ;
 int OUI_SUBTYPE_DONT_CARE ;
 int OUI_SUB_REALTEK_AGG ;
 TYPE_6__ PacketGetElement (int ,int ,int ,int ) ;
 int asocpdu ;
 int memcmp (int *,int*,int) ;
 TYPE_6__ osTmp ;

void HTOnAssocRsp(struct ieee80211_device *ieee)
{
 PRT_HIGH_THROUGHPUT pHTInfo = ieee->pHTInfo;
 PHT_CAPABILITY_ELE pPeerHTCap = ((void*)0);
 PHT_INFORMATION_ELE pPeerHTInfo = ((void*)0);
 u16 nMaxAMSDUSize = 0;
 u8* pMcsFilter = ((void*)0);

 static u8 EWC11NHTCap[] = {0x00, 0x90, 0x4c, 0x33};
 static u8 EWC11NHTInfo[] = {0x00, 0x90, 0x4c, 0x34};

 if( pHTInfo->bCurrentHTSupport == 0 )
 {
  IEEE80211_DEBUG(IEEE80211_DL_ERR, "<=== HTOnAssocRsp(): HT_DISABLE\n");
  return;
 }
 IEEE80211_DEBUG(IEEE80211_DL_HT, "===> HTOnAssocRsp_wq(): HT_ENABLE\n");






 if(!memcmp(pHTInfo->PeerHTCapBuf,EWC11NHTCap, sizeof(EWC11NHTCap)))
  pPeerHTCap = (PHT_CAPABILITY_ELE)(&pHTInfo->PeerHTCapBuf[4]);
 else
  pPeerHTCap = (PHT_CAPABILITY_ELE)(pHTInfo->PeerHTCapBuf);

 if(!memcmp(pHTInfo->PeerHTInfoBuf, EWC11NHTInfo, sizeof(EWC11NHTInfo)))
  pPeerHTInfo = (PHT_INFORMATION_ELE)(&pHTInfo->PeerHTInfoBuf[4]);
 else
  pPeerHTInfo = (PHT_INFORMATION_ELE)(pHTInfo->PeerHTInfoBuf);





 IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA|IEEE80211_DL_HT, pPeerHTCap, sizeof(HT_CAPABILITY_ELE));



 HTSetConnectBwMode(ieee, (HT_CHANNEL_WIDTH)(pPeerHTCap->ChlWidth), (HT_EXTCHNL_OFFSET)(pPeerHTInfo->ExtChlOffset));


  pHTInfo->bCurTxBW40MHz = ((pPeerHTInfo->RecommemdedTxWidth == 1)?1:0);





 pHTInfo->bCurShortGI20MHz=
  ((pHTInfo->bRegShortGI20MHz)?((pPeerHTCap->ShortGI20Mhz==1)?1:0):0);
 pHTInfo->bCurShortGI40MHz=
  ((pHTInfo->bRegShortGI40MHz)?((pPeerHTCap->ShortGI40Mhz==1)?1:0):0);
 pHTInfo->bCurSuppCCK =
  ((pHTInfo->bRegSuppCCK)?((pPeerHTCap->DssCCk==1)?1:0):0);





 pHTInfo->bCurrent_AMSDU_Support = pHTInfo->bAMSDU_Support;

 nMaxAMSDUSize = (pPeerHTCap->MaxAMSDUSize==0)?3839:7935;

 if(pHTInfo->nAMSDU_MaxSize > nMaxAMSDUSize )
  pHTInfo->nCurrent_AMSDU_MaxSize = nMaxAMSDUSize;
 else
  pHTInfo->nCurrent_AMSDU_MaxSize = pHTInfo->nAMSDU_MaxSize;





 pHTInfo->bCurrentAMPDUEnable = pHTInfo->bAMPDUEnable;




 if(!pHTInfo->bRegRT2RTAggregation)
 {

  if(pHTInfo->AMPDU_Factor > pPeerHTCap->MaxRxAMPDUFactor)
   pHTInfo->CurrentAMPDUFactor = pPeerHTCap->MaxRxAMPDUFactor;
  else
   pHTInfo->CurrentAMPDUFactor = pHTInfo->AMPDU_Factor;

 }else
 {






  if (ieee->current_network.bssht.bdRT2RTAggregation)
  {
   if( ieee->pairwise_key_type != KEY_TYPE_NA)

    pHTInfo->CurrentAMPDUFactor = pPeerHTCap->MaxRxAMPDUFactor;
   else
    pHTInfo->CurrentAMPDUFactor = HT_AGG_SIZE_64K;
  }else
  {
   if(pPeerHTCap->MaxRxAMPDUFactor < HT_AGG_SIZE_32K)
    pHTInfo->CurrentAMPDUFactor = pPeerHTCap->MaxRxAMPDUFactor;
   else
    pHTInfo->CurrentAMPDUFactor = HT_AGG_SIZE_32K;
  }
 }




 if(pHTInfo->MPDU_Density > pPeerHTCap->MPDUDensity)
  pHTInfo->CurrentMPDUDensity = pHTInfo->MPDU_Density;
 else
  pHTInfo->CurrentMPDUDensity = pPeerHTCap->MPDUDensity;
 if(ieee->pairwise_key_type != KEY_TYPE_NA )
  pHTInfo->CurrentMPDUDensity = 7;
 if(0)
  {

   pHTInfo->bCurrentAMPDUEnable = 0;
   pHTInfo->ForcedAMSDUMode = HT_AGG_FORCE_ENABLE;
   pHTInfo->ForcedAMSDUMaxSize = 7935;

  pHTInfo->IOTAction |= HT_IOT_ACT_TX_USE_AMSDU_8K;
 }


 pHTInfo->bCurRxReorderEnable = pHTInfo->bRegRxReorderEnable;
 if(pPeerHTCap->MCS[0] == 0)
  pPeerHTCap->MCS[0] = 0xff;

 HTFilterMCSRate(ieee, pPeerHTCap->MCS, ieee->dot11HTOperationalRateSet);




 pHTInfo->PeerMimoPs = pPeerHTCap->MimoPwrSave;
 if(pHTInfo->PeerMimoPs == MIMO_PS_STATIC)
  pMcsFilter = MCS_FILTER_1SS;
 else
  pMcsFilter = MCS_FILTER_ALL;


 ieee->HTHighestOperaRate = HTGetHighestMCSRate(ieee, ieee->dot11HTOperationalRateSet, pMcsFilter);
 ieee->HTCurrentOperaRate = ieee->HTHighestOperaRate;




 pHTInfo->CurrentOpMode = pPeerHTInfo->OptMode;



}
