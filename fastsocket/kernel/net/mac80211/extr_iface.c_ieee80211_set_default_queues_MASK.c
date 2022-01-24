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
struct TYPE_3__ {int* hw_queue; void* cab_queue; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; struct ieee80211_local* local; } ;
struct TYPE_4__ {int flags; int queues; } ;
struct ieee80211_local {TYPE_2__ hw; } ;

/* Variables and functions */
 int IEEE80211_HW_QUEUE_CONTROL ; 
 void* IEEE80211_INVAL_HW_QUEUE ; 
 int IEEE80211_NUM_ACS ; 

__attribute__((used)) static void FUNC0(struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_local *local = sdata->local;
	int i;

	for (i = 0; i < IEEE80211_NUM_ACS; i++) {
		if (local->hw.flags & IEEE80211_HW_QUEUE_CONTROL)
			sdata->vif.hw_queue[i] = IEEE80211_INVAL_HW_QUEUE;
		else if (local->hw.queues >= IEEE80211_NUM_ACS)
			sdata->vif.hw_queue[i] = i;
		else
			sdata->vif.hw_queue[i] = 0;
	}
	sdata->vif.cab_queue = IEEE80211_INVAL_HW_QUEUE;
}