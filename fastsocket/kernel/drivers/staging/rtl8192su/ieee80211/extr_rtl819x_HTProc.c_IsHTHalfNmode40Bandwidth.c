
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_device {int dev; int (* GetHalfNmodeSupportByAPsHandler ) (int ) ;TYPE_1__* pHTInfo; } ;
struct TYPE_4__ {scalar_t__ ChlWidth; } ;
struct TYPE_3__ {int bCurrentHTSupport; int bRegBW40MHz; scalar_t__ PeerHTCapBuf; } ;
typedef TYPE_1__* PRT_HIGH_THROUGHPUT ;
typedef TYPE_2__* PHT_CAPABILITY_ELE ;


 int stub1 (int ) ;

bool IsHTHalfNmode40Bandwidth(struct ieee80211_device* ieee)
{
 bool retValue = 0;
 PRT_HIGH_THROUGHPUT pHTInfo = ieee->pHTInfo;

 if(pHTInfo->bCurrentHTSupport == 0 )
  retValue = 0;
 else if(pHTInfo->bRegBW40MHz == 0)
  retValue = 0;
 else if(!ieee->GetHalfNmodeSupportByAPsHandler(ieee->dev))
  retValue = 0;
 else if(((PHT_CAPABILITY_ELE)(pHTInfo->PeerHTCapBuf))->ChlWidth)
  retValue = 1;
 else
  retValue = 0;

 return retValue;
}
