
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct ieee80211_device {int dummy; } ;
struct TYPE_3__ {scalar_t__* channel_map; } ;
typedef TYPE_1__* PRT_DOT11D_INFO ;


 TYPE_1__* GET_DOT11D_INFO (struct ieee80211_device*) ;
 size_t MAX_CHANNEL_NUMBER ;
 int printk (char*) ;

int IsLegalChannel(
 struct ieee80211_device * dev,
 u8 channel
)
{
 PRT_DOT11D_INFO pDot11dInfo = GET_DOT11D_INFO(dev);

 if(MAX_CHANNEL_NUMBER < channel)
 {
  printk("IsLegalChannel(): Invalid Channel\n");
  return 0;
 }
 if(pDot11dInfo->channel_map[channel] > 0)
  return 1;
 return 0;
}
