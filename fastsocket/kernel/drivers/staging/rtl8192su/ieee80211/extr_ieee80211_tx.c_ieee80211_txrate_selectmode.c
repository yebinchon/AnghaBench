
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ieee80211_device {scalar_t__ iw_mode; scalar_t__ bTxUseDriverAssingedRate; scalar_t__ bTxDisableRateFallBack; } ;
struct TYPE_5__ {int bTxDisableRateFallBack; int bTxUseDriverAssingedRate; scalar_t__ RATRIndex; } ;
typedef TYPE_1__ cb_desc ;
struct TYPE_7__ {scalar_t__ ForcedDataRate; } ;
struct TYPE_6__ {int RATRIndex; void* bTxUseDriverAssingedRate; void* bTxDisableRateFallBack; } ;


 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ IW_MODE_INFRA ;
 int IsDataFrame (int ) ;
 void* TRUE ;
 int pFrame ;
 TYPE_3__* pMgntInfo ;
 TYPE_2__* pTcb ;

void ieee80211_txrate_selectmode(struct ieee80211_device* ieee, cb_desc* tcb_desc)
{
 if(ieee->bTxDisableRateFallBack)
  tcb_desc->bTxDisableRateFallBack = 1;

 if(ieee->bTxUseDriverAssingedRate)
  tcb_desc->bTxUseDriverAssingedRate = 1;
 if(!tcb_desc->bTxDisableRateFallBack || !tcb_desc->bTxUseDriverAssingedRate)
 {
  if (ieee->iw_mode == IW_MODE_INFRA || ieee->iw_mode == IW_MODE_ADHOC)
   tcb_desc->RATRIndex = 0;
 }
}
