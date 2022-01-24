#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_if_managed {int /*<<< orphan*/  mtx; int /*<<< orphan*/  timer; scalar_t__ auth_data; scalar_t__ assoc_data; int /*<<< orphan*/  chswitch_work; int /*<<< orphan*/  csa_connection_drop_work; int /*<<< orphan*/  request_smps_work; int /*<<< orphan*/  beacon_connection_loss_work; int /*<<< orphan*/  monitor_work; } ;
struct TYPE_2__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;

	/*
	 * Make sure some work items will not run after this,
	 * they will not do anything but might not have been
	 * cancelled when disconnecting.
	 */
	FUNC0(&ifmgd->monitor_work);
	FUNC0(&ifmgd->beacon_connection_loss_work);
	FUNC0(&ifmgd->request_smps_work);
	FUNC0(&ifmgd->csa_connection_drop_work);
	FUNC0(&ifmgd->chswitch_work);

	FUNC4(&ifmgd->mtx);
	if (ifmgd->assoc_data)
		FUNC2(sdata, false);
	if (ifmgd->auth_data)
		FUNC3(sdata, false);
	FUNC1(&ifmgd->timer);
	FUNC5(&ifmgd->mtx);
}