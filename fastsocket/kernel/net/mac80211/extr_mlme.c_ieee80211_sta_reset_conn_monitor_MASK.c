#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_if_managed {scalar_t__ probe_send_count; int /*<<< orphan*/  conn_mon_timer; int /*<<< orphan*/  associated; } ;
struct TYPE_6__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; TYPE_2__* local; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ hw; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_CONNECTION_IDLE_TIME ; 
 int IEEE80211_HW_CONNECTION_MONITOR ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3(struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;

	if (FUNC2(!sdata->u.mgd.associated))
		return;

	if (sdata->local->hw.flags & IEEE80211_HW_CONNECTION_MONITOR)
		return;

	FUNC0(&sdata->u.mgd.conn_mon_timer,
		  FUNC1(jiffies + IEEE80211_CONNECTION_IDLE_TIME));

	ifmgd->probe_send_count = 0;
}