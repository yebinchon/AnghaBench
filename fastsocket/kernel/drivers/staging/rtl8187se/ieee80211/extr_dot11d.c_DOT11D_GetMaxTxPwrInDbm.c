
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct ieee80211_device {int dummy; } ;
struct TYPE_3__ {size_t* MaxTxPwrDbmList; scalar_t__* channel_map; } ;
typedef TYPE_1__* PRT_DOT11D_INFO ;


 TYPE_1__* GET_DOT11D_INFO (struct ieee80211_device*) ;
 size_t MAX_CHANNEL_NUMBER ;
 int printk (char*) ;

u8
DOT11D_GetMaxTxPwrInDbm(
 struct ieee80211_device *dev,
 u8 Channel
 )
{
 PRT_DOT11D_INFO pDot11dInfo = GET_DOT11D_INFO(dev);
 u8 MaxTxPwrInDbm = 255;

 if(MAX_CHANNEL_NUMBER < Channel)
 {
  printk("DOT11D_GetMaxTxPwrInDbm(): Invalid Channel\n");
  return MaxTxPwrInDbm;
 }
 if(pDot11dInfo->channel_map[Channel])
 {
  MaxTxPwrInDbm = pDot11dInfo->MaxTxPwrDbmList[Channel];
 }

 return MaxTxPwrInDbm;
}
