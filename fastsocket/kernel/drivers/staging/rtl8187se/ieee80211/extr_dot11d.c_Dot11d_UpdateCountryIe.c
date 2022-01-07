
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct ieee80211_device {int dummy; } ;
struct TYPE_5__ {size_t FirstChnl; int NumChnls; int MaxTxPowerInDbm; } ;
struct TYPE_4__ {int* channel_map; int* MaxTxPwrDbmList; int State; int CountryIeBuf; int CountryIeLen; } ;
typedef TYPE_1__* PRT_DOT11D_INFO ;
typedef TYPE_2__* PCHNL_TXPOWER_TRIPLE ;


 int DOT11D_STATE_LEARNED ;
 int Dot11d_Reset (struct ieee80211_device*) ;
 TYPE_1__* GET_DOT11D_INFO (struct ieee80211_device*) ;
 int MAX_CHANNEL_NUMBER ;
 int UPDATE_CIE_SRC (struct ieee80211_device*,size_t*) ;
 int memcpy (int ,size_t*,int ) ;
 int memset (int*,int,int) ;
 int printk (char*,...) ;

void
Dot11d_UpdateCountryIe(
 struct ieee80211_device *dev,
 u8 * pTaddr,
 u16 CoutryIeLen,
 u8 * pCoutryIe
 )
{
 PRT_DOT11D_INFO pDot11dInfo = GET_DOT11D_INFO(dev);
 u8 i, j, NumTriples, MaxChnlNum;
 PCHNL_TXPOWER_TRIPLE pTriple;

 if((CoutryIeLen - 3)%3 != 0)
 {
  printk("Dot11d_UpdateCountryIe(): Invalid country IE, skip it........1\n");
  Dot11d_Reset(dev);
  return;
 }

 memset(pDot11dInfo->channel_map, 0, MAX_CHANNEL_NUMBER+1);
 memset(pDot11dInfo->MaxTxPwrDbmList, 0xFF, MAX_CHANNEL_NUMBER+1);
 MaxChnlNum = 0;
 NumTriples = (CoutryIeLen - 3) / 3;
 pTriple = (PCHNL_TXPOWER_TRIPLE)(pCoutryIe + 3);
 for(i = 0; i < NumTriples; i++)
 {
  if(MaxChnlNum >= pTriple->FirstChnl)
  {
   printk("Dot11d_UpdateCountryIe(): Invalid country IE, skip it........1\n");
   Dot11d_Reset(dev);
   return;
  }
  if(MAX_CHANNEL_NUMBER < (pTriple->FirstChnl + pTriple->NumChnls))
  {
   printk("Dot11d_UpdateCountryIe(): Invalid country IE, skip it........2\n");
   Dot11d_Reset(dev);
   return;
  }

  for(j = 0 ; j < pTriple->NumChnls; j++)
  {
   pDot11dInfo->channel_map[pTriple->FirstChnl + j] = 1;
   pDot11dInfo->MaxTxPwrDbmList[pTriple->FirstChnl + j] = pTriple->MaxTxPowerInDbm;
   MaxChnlNum = pTriple->FirstChnl + j;
  }

  pTriple = (PCHNL_TXPOWER_TRIPLE)((u8*)pTriple + 3);
 }


 printk("Channel List:");
 for(i=1; i<= MAX_CHANNEL_NUMBER; i++)
  if(pDot11dInfo->channel_map[i] > 0)
   printk(" %d", i);
 printk("\n");


 UPDATE_CIE_SRC(dev, pTaddr);

 pDot11dInfo->CountryIeLen = CoutryIeLen;
 memcpy(pDot11dInfo->CountryIeBuf, pCoutryIe,CoutryIeLen);
 pDot11dInfo->State = DOT11D_STATE_LEARNED;
}
