
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee80211_device {TYPE_2__* pHTInfo; } ;
struct TYPE_4__ {int bUseShortGI; } ;
typedef TYPE_1__ cb_desc ;
struct TYPE_5__ {int bCurBW40MHz; scalar_t__ bCurShortGI20MHz; scalar_t__ bCurShortGI40MHz; scalar_t__ bForcedShortGI; int bEnableHT; int bCurrentHTSupport; } ;
typedef TYPE_2__* PRT_HIGH_THROUGHPUT ;



extern void
ieee80211_query_HTCapShortGI(struct ieee80211_device *ieee, cb_desc *tcb_desc)
{
 PRT_HIGH_THROUGHPUT pHTInfo = ieee->pHTInfo;

 tcb_desc->bUseShortGI = 0;

 if(!pHTInfo->bCurrentHTSupport||!pHTInfo->bEnableHT)
  return;

 if(pHTInfo->bForcedShortGI)
 {
  tcb_desc->bUseShortGI = 1;
  return;
 }

 if((pHTInfo->bCurBW40MHz==1) && pHTInfo->bCurShortGI40MHz)
  tcb_desc->bUseShortGI = 1;
 else if((pHTInfo->bCurBW40MHz==0) && pHTInfo->bCurShortGI20MHz)
  tcb_desc->bUseShortGI = 1;
}
