
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee80211_device {scalar_t__ bTxUseDriverAssingedRate; scalar_t__ bTxDisableRateFallBack; TYPE_1__* pHTInfo; } ;
struct TYPE_6__ {scalar_t__ bTxEnableFwCalcDur; } ;
struct TYPE_5__ {scalar_t__ bRegTxEnableFwCalcDur; } ;
struct TYPE_4__ {int bRegShortGI20MHz; int bRegShortGI40MHz; int bRegBW40MHz; int bRegSuppCCK; unsigned long nAMSDU_MaxSize; int bAMPDUEnable; int AMPDU_Factor; int SelfMimoPs; int bRegRT2RTAggregation; int bRegRxReorderEnable; int RxReorderWinSize; int RxReorderPendingTime; scalar_t__ MPDU_Density; scalar_t__ bAMSDU_Support; } ;
typedef TYPE_1__* PRT_HIGH_THROUGHPUT ;
typedef scalar_t__ BOOLEAN ;


 TYPE_3__* pMgntInfo ;
 TYPE_2__* pNdisCommon ;

void HTUpdateDefaultSetting(struct ieee80211_device* ieee)
{
 PRT_HIGH_THROUGHPUT pHTInfo = ieee->pHTInfo;





 pHTInfo->bRegShortGI20MHz= 1;
 pHTInfo->bRegShortGI40MHz= 1;


 pHTInfo->bRegBW40MHz = 1;


 if(pHTInfo->bRegBW40MHz)
  pHTInfo->bRegSuppCCK = 1;
 else
  pHTInfo->bRegSuppCCK = 1;


 pHTInfo->nAMSDU_MaxSize = 7935UL;
 pHTInfo->bAMSDU_Support = 0;


 pHTInfo->bAMPDUEnable = 1;
 pHTInfo->AMPDU_Factor = 2;
 pHTInfo->MPDU_Density = 0;


 pHTInfo->SelfMimoPs = 3;
 if(pHTInfo->SelfMimoPs == 2)
  pHTInfo->SelfMimoPs = 3;

 ieee->bTxDisableRateFallBack = 0;
 ieee->bTxUseDriverAssingedRate = 0;







 pHTInfo->bRegRT2RTAggregation = 1;


 pHTInfo->bRegRxReorderEnable = 1;
 pHTInfo->RxReorderWinSize = 64;
 pHTInfo->RxReorderPendingTime = 30;



}
