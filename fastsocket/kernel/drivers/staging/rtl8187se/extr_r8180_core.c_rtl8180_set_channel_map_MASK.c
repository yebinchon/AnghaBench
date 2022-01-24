#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct ieee80211_device {int MinPassiveChnlNum; int IbssStartChnl; int bGlobalDomain; } ;
struct TYPE_4__ {int Len; int* Channel; } ;
struct TYPE_3__ {int* channel_map; int /*<<< orphan*/  bEnabled; } ;

/* Variables and functions */
#define  COUNTRY_CODE_ETSI 138 
#define  COUNTRY_CODE_FCC 137 
#define  COUNTRY_CODE_FRANCE 136 
#define  COUNTRY_CODE_GLOBAL_DOMAIN 135 
#define  COUNTRY_CODE_IC 134 
#define  COUNTRY_CODE_ISRAEL 133 
#define  COUNTRY_CODE_MKK 132 
#define  COUNTRY_CODE_MKK1 131 
#define  COUNTRY_CODE_SPAIN 130 
#define  COUNTRY_CODE_TELEC 129 
#define  COUNTRY_CODE_WORLD_WIDE_13_INDEX 128 
 TYPE_2__* ChannelPlan ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_device*) ; 
 TYPE_1__* FUNC2 (struct ieee80211_device*) ; 
 int MAX_CHANNEL_NUMBER ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(u8 channel_plan, struct ieee80211_device *ieee)
{
	int i;

	//lzm add 080826
	ieee->MinPassiveChnlNum=MAX_CHANNEL_NUMBER+1;
	ieee->IbssStartChnl=0;

	switch (channel_plan)
	{
		case COUNTRY_CODE_FCC:
		case COUNTRY_CODE_IC:
		case COUNTRY_CODE_ETSI:
		case COUNTRY_CODE_SPAIN:
		case COUNTRY_CODE_FRANCE:
		case COUNTRY_CODE_MKK:
		case COUNTRY_CODE_MKK1:
		case COUNTRY_CODE_ISRAEL:
		case COUNTRY_CODE_TELEC:
		{
			FUNC0(ieee);
			ieee->bGlobalDomain = false;
			if (ChannelPlan[channel_plan].Len != 0){
				// Clear old channel map
				FUNC3(FUNC2(ieee)->channel_map, 0, sizeof(FUNC2(ieee)->channel_map));
				// Set new channel map
				for (i=0;i<ChannelPlan[channel_plan].Len;i++)
				{
					if(ChannelPlan[channel_plan].Channel[i] <= 14)
						FUNC2(ieee)->channel_map[ChannelPlan[channel_plan].Channel[i]] = 1;
				}
			}
			break;
		}
		case COUNTRY_CODE_GLOBAL_DOMAIN:
		{
			FUNC2(ieee)->bEnabled = 0;
			FUNC1(ieee);
			ieee->bGlobalDomain = true;
			break;
		}
		case COUNTRY_CODE_WORLD_WIDE_13_INDEX://lzm add 080826
		{
		ieee->MinPassiveChnlNum=12;
		ieee->IbssStartChnl= 10;
		break;
		}
		default:
		{
			FUNC0(ieee);
			ieee->bGlobalDomain = false;
			FUNC3(FUNC2(ieee)->channel_map, 0, sizeof(FUNC2(ieee)->channel_map));
			for (i=1;i<=14;i++)
			{
				FUNC2(ieee)->channel_map[i] = 1;
			}
			break;
		}
	}
}