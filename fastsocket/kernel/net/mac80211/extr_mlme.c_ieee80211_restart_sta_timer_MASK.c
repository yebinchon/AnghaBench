#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int /*<<< orphan*/  monitor_work; } ;
struct TYPE_7__ {TYPE_1__ mgd; } ;
struct TYPE_8__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  work; TYPE_4__* local; TYPE_2__ u; TYPE_3__ vif; } ;
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {TYPE_5__ hw; } ;

/* Variables and functions */
 int IEEE80211_HW_CONNECTION_MONITOR ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ieee80211_sub_if_data *sdata)
{
	u32 flags;

	if (sdata->vif.type == NL80211_IFTYPE_STATION) {
		FUNC0(sdata);

		/* let's probe the connection once */
		flags = sdata->local->hw.flags;
		if (!(flags & IEEE80211_HW_CONNECTION_MONITOR))
			FUNC1(&sdata->local->hw,
					     &sdata->u.mgd.monitor_work);
		/* and do all the other regular work too */
		FUNC1(&sdata->local->hw, &sdata->work);
	}
}