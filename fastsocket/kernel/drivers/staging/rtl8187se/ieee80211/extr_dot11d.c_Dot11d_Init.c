
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_device {int dummy; } ;
struct TYPE_3__ {int MaxTxPwrDbmList; int channel_map; scalar_t__ CountryIeLen; int State; scalar_t__ bEnabled; } ;
typedef TYPE_1__* PRT_DOT11D_INFO ;


 int DOT11D_STATE_NONE ;
 TYPE_1__* GET_DOT11D_INFO (struct ieee80211_device*) ;
 scalar_t__ MAX_CHANNEL_NUMBER ;
 int RESET_CIE_WATCHDOG (struct ieee80211_device*) ;
 int memset (int ,int,scalar_t__) ;
 int printk (char*) ;

void
Dot11d_Init(struct ieee80211_device *ieee)
{
 PRT_DOT11D_INFO pDot11dInfo = GET_DOT11D_INFO(ieee);

 pDot11dInfo->bEnabled = 0;

 pDot11dInfo->State = DOT11D_STATE_NONE;
 pDot11dInfo->CountryIeLen = 0;
 memset(pDot11dInfo->channel_map, 0, MAX_CHANNEL_NUMBER+1);
 memset(pDot11dInfo->MaxTxPwrDbmList, 0xFF, MAX_CHANNEL_NUMBER+1);
 RESET_CIE_WATCHDOG(ieee);

 printk("Dot11d_Init()\n");
}
