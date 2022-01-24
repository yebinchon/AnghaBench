#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ieee80211_device {int sta_sleep; int ack_tx_to_ieee; int /*<<< orphan*/  dev; int /*<<< orphan*/  (* sta_wake_up ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct ieee80211_device *ieee, short nl)
{
	if(ieee->sta_sleep == 0){
		if(nl){
			FUNC1("Warning: driver is probably failing to report TX ps error\n");
			ieee->ack_tx_to_ieee = 1;
			FUNC0(ieee, 0);
		}
		return;

	}

	if(ieee->sta_sleep == 1)
		ieee->sta_wake_up(ieee->dev);

	ieee->sta_sleep = 0;

	if(nl){
		ieee->ack_tx_to_ieee = 1;
		FUNC0(ieee, 0);
	}
}