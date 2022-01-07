
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct ieee80211_device {TYPE_1__* pHTInfo; } ;
struct TYPE_2__ {scalar_t__ bCurShortGI20MHz; scalar_t__ bCurShortGI40MHz; scalar_t__ bCurBW40MHz; } ;
typedef TYPE_1__* PRT_HIGH_THROUGHPUT ;


 int *** MCS_DATA_RATE ;

u16 HTMcsToDataRate( struct ieee80211_device* ieee, u8 nMcsRate)
{
 PRT_HIGH_THROUGHPUT pHTInfo = ieee->pHTInfo;

 u8 is40MHz = (pHTInfo->bCurBW40MHz)?1:0;
 u8 isShortGI = (pHTInfo->bCurBW40MHz)?
      ((pHTInfo->bCurShortGI40MHz)?1:0):
      ((pHTInfo->bCurShortGI20MHz)?1:0);
 return MCS_DATA_RATE[is40MHz][isShortGI][(nMcsRate&0x7f)];
}
