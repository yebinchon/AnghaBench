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
struct ieee80211_vif {int dummy; } ;
struct ieee80211_if_managed {int /*<<< orphan*/  chswitch_work; int /*<<< orphan*/  csa_connection_drop_work; } ;
struct TYPE_3__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_2__* local; TYPE_1__ u; } ;
struct TYPE_4__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,int) ; 
 struct ieee80211_sub_if_data* FUNC3 (struct ieee80211_vif*) ; 

void FUNC4(struct ieee80211_vif *vif, bool success)
{
	struct ieee80211_sub_if_data *sdata = FUNC3(vif);
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;

	FUNC2(sdata, success);
	if (!success) {
		FUNC1(sdata,
			   "driver channel switch failed, disconnecting\n");
		FUNC0(&sdata->local->hw,
				     &ifmgd->csa_connection_drop_work);
	} else {
		FUNC0(&sdata->local->hw, &ifmgd->chswitch_work);
	}
}