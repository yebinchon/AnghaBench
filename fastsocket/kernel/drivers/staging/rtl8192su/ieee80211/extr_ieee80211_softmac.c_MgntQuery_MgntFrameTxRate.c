
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_device {int basic_rate; scalar_t__ mode; TYPE_1__* pHTInfo; } ;
struct TYPE_2__ {int IOTAction; int bCurSuppCCK; } ;
typedef TYPE_1__* PRT_HIGH_THROUGHPUT ;


 int HT_IOT_ACT_MGNT_USE_CCK_6M ;
 scalar_t__ IEEE_A ;
 scalar_t__ IEEE_N_24G ;
 scalar_t__ IEEE_N_5G ;

u8 MgntQuery_MgntFrameTxRate(struct ieee80211_device *ieee)
{
 PRT_HIGH_THROUGHPUT pHTInfo = ieee->pHTInfo;
 u8 rate;


 if(pHTInfo->IOTAction & HT_IOT_ACT_MGNT_USE_CCK_6M)
  rate = 0x0c;
 else
  rate = ieee->basic_rate & 0x7f;

 if(rate == 0){

  if(ieee->mode == IEEE_A||
     ieee->mode== IEEE_N_5G||
     (ieee->mode== IEEE_N_24G&&!pHTInfo->bCurSuppCCK))
   rate = 0x0c;
  else
   rate = 0x02;
 }
 return rate;
}
