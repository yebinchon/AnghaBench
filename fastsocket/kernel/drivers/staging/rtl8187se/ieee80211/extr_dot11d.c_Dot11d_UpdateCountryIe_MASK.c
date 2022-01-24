#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct ieee80211_device {int dummy; } ;
struct TYPE_5__ {size_t FirstChnl; int NumChnls; int MaxTxPowerInDbm; } ;
struct TYPE_4__ {int* channel_map; int* MaxTxPwrDbmList; int /*<<< orphan*/  State; int /*<<< orphan*/  CountryIeBuf; int /*<<< orphan*/  CountryIeLen; } ;
typedef  TYPE_1__* PRT_DOT11D_INFO ;
typedef  TYPE_2__* PCHNL_TXPOWER_TRIPLE ;

/* Variables and functions */
 int /*<<< orphan*/  DOT11D_STATE_LEARNED ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_device*) ; 
 TYPE_1__* FUNC1 (struct ieee80211_device*) ; 
 int MAX_CHANNEL_NUMBER ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_device*,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

void
FUNC6(
	struct ieee80211_device *dev,
	u8 *		pTaddr,
	u16	CoutryIeLen,
	u8 * pCoutryIe
	)
{
	PRT_DOT11D_INFO pDot11dInfo = FUNC1(dev);
	u8 i, j, NumTriples, MaxChnlNum;
	PCHNL_TXPOWER_TRIPLE pTriple;

	if((CoutryIeLen - 3)%3 != 0)
	{
		FUNC5("Dot11d_UpdateCountryIe(): Invalid country IE, skip it........1\n");
		FUNC0(dev);
		return;
	}

	FUNC4(pDot11dInfo->channel_map, 0, MAX_CHANNEL_NUMBER+1);
	FUNC4(pDot11dInfo->MaxTxPwrDbmList, 0xFF, MAX_CHANNEL_NUMBER+1);
	MaxChnlNum = 0;
	NumTriples = (CoutryIeLen - 3) / 3; // skip 3-byte country string.
	pTriple = (PCHNL_TXPOWER_TRIPLE)(pCoutryIe + 3);
	for(i = 0; i < NumTriples; i++)
	{
		if(MaxChnlNum >= pTriple->FirstChnl)
		{ // It is not in a monotonically increasing order, so stop processing.
			FUNC5("Dot11d_UpdateCountryIe(): Invalid country IE, skip it........1\n");
			FUNC0(dev);
			return;
		}
		if(MAX_CHANNEL_NUMBER < (pTriple->FirstChnl + pTriple->NumChnls))
		{ // It is not a valid set of channel id, so stop processing.
			FUNC5("Dot11d_UpdateCountryIe(): Invalid country IE, skip it........2\n");
			FUNC0(dev);
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
#if 1
	//printk("Dot11d_UpdateCountryIe(): Channel List:\n");
	FUNC5("Channel List:");
	for(i=1; i<= MAX_CHANNEL_NUMBER; i++)
		if(pDot11dInfo->channel_map[i] > 0)
			FUNC5(" %d", i);
	FUNC5("\n");
#endif

	FUNC2(dev, pTaddr);

	pDot11dInfo->CountryIeLen = CoutryIeLen;
	FUNC3(pDot11dInfo->CountryIeBuf, pCoutryIe,CoutryIeLen);
	pDot11dInfo->State = DOT11D_STATE_LEARNED;
}