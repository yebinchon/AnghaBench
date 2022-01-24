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
struct TYPE_3__ {short channel; int beacon_interval; } ;
struct ieee80211_device {int proto_started; int* last_rxseq_num; int* last_rxfrag_num; int iw_mode; scalar_t__ init_wmmparam_flag; scalar_t__* last_packet_time; TYPE_1__ current_network; int /*<<< orphan*/  dev; int /*<<< orphan*/  (* set_chan ) (int /*<<< orphan*/ ,short) ;} ;
struct TYPE_4__ {int /*<<< orphan*/ * channel_map; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct ieee80211_device*) ; 
#define  IW_MODE_ADHOC 132 
#define  IW_MODE_AUTO 131 
#define  IW_MODE_INFRA 130 
#define  IW_MODE_MASTER 129 
#define  IW_MODE_MONITOR 128 
 short MAX_CHANNEL_NUMBER ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,short) ; 

void FUNC6(struct ieee80211_device *ieee)
{
	short ch = 0;
 	int i = 0;

	if (ieee->proto_started)
		return;

	ieee->proto_started = 1;

	if (ieee->current_network.channel == 0){
		do{
			ch++;
			if (ch > MAX_CHANNEL_NUMBER)
				return; /* no channel found */

		}while(!FUNC0(ieee)->channel_map[ch]);

		ieee->current_network.channel = ch;
	}

	if (ieee->current_network.beacon_interval == 0)
		ieee->current_network.beacon_interval = 100;
	ieee->set_chan(ieee->dev,ieee->current_network.channel);

       	for(i = 0; i < 17; i++) {
	  ieee->last_rxseq_num[i] = -1;
	  ieee->last_rxfrag_num[i] = -1;
	  ieee->last_packet_time[i] = 0;
	}

	ieee->init_wmmparam_flag = 0;//reinitialize AC_xx_PARAM registers.


	/* if the user set the MAC of the ad-hoc cell and then
	 * switch to managed mode, shall we  make sure that association
	 * attempts does not fail just because the user provide the essid
	 * and the nic is still checking for the AP MAC ??
	 */
	switch (ieee->iw_mode) {
		case IW_MODE_AUTO:
			ieee->iw_mode = IW_MODE_INFRA;
			//not set break here intentionly
		case IW_MODE_INFRA:
			FUNC1(ieee);
			break;

		case IW_MODE_ADHOC:
			FUNC2(ieee);
			break;

		case IW_MODE_MASTER:
			FUNC3(ieee);
		break;

		case IW_MODE_MONITOR:
			FUNC4(ieee);
			break;

		default:
			ieee->iw_mode = IW_MODE_INFRA;
			FUNC1(ieee);
			break;
	}
}