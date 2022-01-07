
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ieee80211_device {int HTHighestOperaRate; int HTCurrentOperaRate; int dot11HTOperationalRateSet; int Regdot11HTOperationalRateSet; TYPE_2__* pHTInfo; } ;
struct TYPE_9__ {int dot11HTOperationalRateSet; int dot11OperationalRateSet; } ;
struct TYPE_6__ {int (* InitHalRATRTableHandler ) (TYPE_3__*,int *,int ) ;} ;
struct TYPE_8__ {TYPE_1__ HalFunc; } ;
struct TYPE_7__ {int bCurrentHTSupport; int CurrentMPDUDensity; int AMPDU_Factor; int CurrentAMPDUFactor; int bAMPDUEnable; int bCurrentAMPDUEnable; int nAMSDU_MaxSize; int nCurrent_AMSDU_MaxSize; int bAMSDU_Support; int bCurrent_AMSDU_Support; int bRegShortGI40MHz; int bCurShortGI40MHz; int bRegShortGI20MHz; int bCurShortGI20MHz; int bRegBW40MHz; int bCurBW40MHz; int bRegSuppCCK; int bCurSuppCCK; scalar_t__ bEnableHT; } ;
typedef TYPE_2__* PRT_HIGH_THROUGHPUT ;


 TYPE_3__* Adapter ;
 int HTFilterMCSRate (struct ieee80211_device*,int ,int ) ;
 int HTGetHighestMCSRate (struct ieee80211_device*,int ,int ) ;
 int MCS_FILTER_ALL ;
 TYPE_4__* pMgntInfo ;
 int stub1 (TYPE_3__*,int *,int ) ;

void HTUseDefaultSetting(struct ieee80211_device* ieee)
{
 PRT_HIGH_THROUGHPUT pHTInfo = ieee->pHTInfo;


 if(pHTInfo->bEnableHT)
 {
  pHTInfo->bCurrentHTSupport = 1;

  pHTInfo->bCurSuppCCK = pHTInfo->bRegSuppCCK;

  pHTInfo->bCurBW40MHz = pHTInfo->bRegBW40MHz;

  pHTInfo->bCurShortGI20MHz= pHTInfo->bRegShortGI20MHz;

  pHTInfo->bCurShortGI40MHz= pHTInfo->bRegShortGI40MHz;

  pHTInfo->bCurrent_AMSDU_Support = pHTInfo->bAMSDU_Support;

  pHTInfo->nCurrent_AMSDU_MaxSize = pHTInfo->nAMSDU_MaxSize;

  pHTInfo->bCurrentAMPDUEnable = pHTInfo->bAMPDUEnable;

  pHTInfo->CurrentAMPDUFactor = pHTInfo->AMPDU_Factor;

  pHTInfo->CurrentMPDUDensity = pHTInfo->CurrentMPDUDensity;




  HTFilterMCSRate(ieee, ieee->Regdot11HTOperationalRateSet, ieee->dot11HTOperationalRateSet);




  ieee->HTHighestOperaRate = HTGetHighestMCSRate(ieee, ieee->dot11HTOperationalRateSet, MCS_FILTER_ALL);
  ieee->HTCurrentOperaRate = ieee->HTHighestOperaRate;

 }
 else
 {
  pHTInfo->bCurrentHTSupport = 0;
 }
 return;
}
