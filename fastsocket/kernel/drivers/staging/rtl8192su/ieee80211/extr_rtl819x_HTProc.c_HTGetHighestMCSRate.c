
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_device {int dummy; } ;


 scalar_t__ HTMcsToDataRate (struct ieee80211_device*,int) ;
 int IEEE80211_DEBUG (int ,char*) ;
 int IEEE80211_DL_ERR ;

u8 HTGetHighestMCSRate(struct ieee80211_device* ieee, u8* pMCSRateSet, u8* pMCSFilter)
{
 u8 i, j;
 u8 bitMap;
 u8 mcsRate = 0;
 u8 availableMcsRate[16];
 if (pMCSRateSet == ((void*)0) || pMCSFilter == ((void*)0))
 {
  IEEE80211_DEBUG(IEEE80211_DL_ERR, "pMCSRateSet or pMCSFilter can't be null in HTGetHighestMCSRate()\n");
  return 0;
 }
 for(i=0; i<16; i++)
  availableMcsRate[i] = pMCSRateSet[i] & pMCSFilter[i];

 for(i = 0; i < 16; i++)
 {
  if(availableMcsRate[i] != 0)
   break;
 }
 if(i == 16)
  return 0;

 for(i = 0; i < 16; i++)
 {
  if(availableMcsRate[i] != 0)
  {
   bitMap = availableMcsRate[i];
   for(j = 0; j < 8; j++)
   {
    if((bitMap%2) != 0)
    {
     if(HTMcsToDataRate(ieee, (8*i+j)) > HTMcsToDataRate(ieee, mcsRate))
      mcsRate = (8*i+j);
    }
    bitMap = bitMap>>1;
   }
  }
 }
 return (mcsRate|0x80);
}
