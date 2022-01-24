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
struct TYPE_3__ {int channel; } ;
struct ieee80211_device {scalar_t__ state; int actscanning; int /*<<< orphan*/  scan_sem; TYPE_1__ current_network; int /*<<< orphan*/  dev; int /*<<< orphan*/  (* set_chan ) (int /*<<< orphan*/ ,size_t) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  channel_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_device*) ; 
 TYPE_2__* FUNC1 (struct ieee80211_device*) ; 
 scalar_t__ IEEE80211_LINKED ; 
 int /*<<< orphan*/  IEEE80211_SOFTMAC_SCAN_TIME ; 
 scalar_t__ FUNC2 (struct ieee80211_device*) ; 
 int MAX_CHANNEL_NUMBER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct ieee80211_device *ieee)
{
	int ch;
        unsigned int watch_dog = 0;
	u8 channel_map[MAX_CHANNEL_NUMBER+1];
	FUNC5(channel_map, FUNC1(ieee)->channel_map, MAX_CHANNEL_NUMBER+1);
        FUNC3(&ieee->scan_sem);
	ch = ieee->current_network.channel;
//      	if(ieee->sync_scan_hurryup)
//	{

//		printk("stop scan sync\n");
//   		goto out;
//  	}
//	printk("=======hh===============>ips scan\n");
     	while(1)
        {
                /* this fuction can be called in two situations
                 * 1- We have switched to ad-hoc mode and we are
                 *    performing a complete syncro scan before conclude
                 *    there are no interesting cell and to create a
                 *    new one. In this case the link state is
                 *    IEEE80211_NOLINK until we found an interesting cell.
                 *    If so the ieee8021_new_net, called by the RX path
                 *    will set the state to IEEE80211_LINKED, so we stop
                 *    scanning
                 * 2- We are linked and the root uses run iwlist scan.
                 *    So we switch to IEEE80211_LINKED_SCANNING to remember
                 *    that we are still logically linked (not interested in
                 *    new network events, despite for updating the net list,
                 *    but we are temporarly 'unlinked' as the driver shall
                 *    not filter RX frames and the channel is changing.
                 * So the only situation in witch are interested is to check
                 * if the state become LINKED because of the #1 situation
                 */
		if (ieee->state == IEEE80211_LINKED)
		{
			goto out;
		}
		if(channel_map[ieee->current_network.channel] > 0)
		{
			ieee->set_chan(ieee->dev, ieee->current_network.channel);
//			printk("======>channel=%d  ",ieee->current_network.channel);
		}
		if(channel_map[ieee->current_network.channel] == 1)
		{
//			printk("====send probe request\n");
			FUNC4(ieee);
                }
		/* this prevent excessive time wait when we
                 * need to wait for a syncro scan to end..
                 */
//                if (ieee->sync_scan_hurryup)
//                        goto out;

		FUNC6(IEEE80211_SOFTMAC_SCAN_TIME);

		do{
			if (watch_dog++ >= MAX_CHANNEL_NUMBER)
		//	if (++watch_dog >= 15);//MAX_CHANNEL_NUMBER)  //YJ,modified,080630
				goto out; /* scan completed */

			ieee->current_network.channel = (ieee->current_network.channel + 1)%MAX_CHANNEL_NUMBER;
		}while(!channel_map[ieee->current_network.channel]);
        }
out:
	//ieee->sync_scan_hurryup = 0;
   	//ieee->set_chan(ieee->dev, ch);
   	//ieee->current_network.channel = ch;
	ieee->actscanning = false;
	FUNC8(&ieee->scan_sem);
	if(FUNC2(ieee))
		FUNC0(ieee);
}