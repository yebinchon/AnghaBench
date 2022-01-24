#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  MaxTxPwrDbmList; int /*<<< orphan*/  channel_map; scalar_t__ CountryIeLen; int /*<<< orphan*/  State; scalar_t__ bEnabled; } ;
typedef  TYPE_1__* PRT_DOT11D_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  DOT11D_STATE_NONE ; 
 TYPE_1__* FUNC0 (struct ieee80211_device*) ; 
 scalar_t__ MAX_CHANNEL_NUMBER ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(struct ieee80211_device *ieee)
{
	PRT_DOT11D_INFO pDot11dInfo = FUNC0(ieee);

	pDot11dInfo->bEnabled = 0;

	pDot11dInfo->State = DOT11D_STATE_NONE;
	pDot11dInfo->CountryIeLen = 0;
	FUNC2(pDot11dInfo->channel_map, 0, MAX_CHANNEL_NUMBER+1);
	FUNC2(pDot11dInfo->MaxTxPwrDbmList, 0xFF, MAX_CHANNEL_NUMBER+1);
	FUNC1(ieee);

	FUNC3("Dot11d_Init()\n");
}