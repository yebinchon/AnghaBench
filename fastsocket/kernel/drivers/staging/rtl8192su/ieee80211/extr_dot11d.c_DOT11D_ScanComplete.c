
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_device {int dummy; } ;
struct TYPE_3__ {int State; } ;
typedef TYPE_1__* PRT_DOT11D_INFO ;





 int Dot11d_Reset (struct ieee80211_device*) ;
 int GET_CIE_WATCHDOG (struct ieee80211_device*) ;
 TYPE_1__* GET_DOT11D_INFO (struct ieee80211_device*) ;

void
DOT11D_ScanComplete(
 struct ieee80211_device * dev
 )
{
 PRT_DOT11D_INFO pDot11dInfo = GET_DOT11D_INFO(dev);

 switch(pDot11dInfo->State)
 {
 case 129:
  pDot11dInfo->State = 130;
  break;

 case 130:
  if( GET_CIE_WATCHDOG(dev) == 0 )
  {
   Dot11d_Reset(dev);
  }
  break;
 case 128:
  break;
 }
}
