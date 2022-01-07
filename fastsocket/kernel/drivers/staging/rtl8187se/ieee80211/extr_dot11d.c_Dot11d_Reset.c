
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_device {int dummy; } ;
struct TYPE_3__ {int* channel_map; int* MaxTxPwrDbmList; scalar_t__ CountryIeLen; int State; } ;
typedef TYPE_1__* PRT_DOT11D_INFO ;


 int DOT11D_STATE_NONE ;
 TYPE_1__* GET_DOT11D_INFO (struct ieee80211_device*) ;
 scalar_t__ MAX_CHANNEL_NUMBER ;
 int RESET_CIE_WATCHDOG (struct ieee80211_device*) ;
 int memset (int*,int,scalar_t__) ;

void
Dot11d_Reset(struct ieee80211_device *ieee)
{
 u32 i;
 PRT_DOT11D_INFO pDot11dInfo = GET_DOT11D_INFO(ieee);


 memset(pDot11dInfo->channel_map, 0, MAX_CHANNEL_NUMBER+1);
 memset(pDot11dInfo->MaxTxPwrDbmList, 0xFF, MAX_CHANNEL_NUMBER+1);

 for (i=1; i<=11; i++) {
  (pDot11dInfo->channel_map)[i] = 1;
 }
 for (i=12; i<=14; i++) {
  (pDot11dInfo->channel_map)[i] = 2;
 }

 pDot11dInfo->State = DOT11D_STATE_NONE;
 pDot11dInfo->CountryIeLen = 0;
 RESET_CIE_WATCHDOG(ieee);


}
