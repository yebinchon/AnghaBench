
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct ieee80211_device {int dummy; } ;


 scalar_t__ IsHTHalfNmode40Bandwidth (struct ieee80211_device*) ;
 scalar_t__ IsHTHalfNmodeSGI (struct ieee80211_device*,size_t) ;
 int *** MCS_DATA_RATE ;

u16 HTHalfMcsToDataRate(struct ieee80211_device* ieee, u8 nMcsRate)
{

 u8 is40MHz;
 u8 isShortGI;

 is40MHz = (IsHTHalfNmode40Bandwidth(ieee))?1:0;
 isShortGI = (IsHTHalfNmodeSGI(ieee, is40MHz))? 1:0;

 return MCS_DATA_RATE[is40MHz][isShortGI][(nMcsRate&0x7f)];
}
