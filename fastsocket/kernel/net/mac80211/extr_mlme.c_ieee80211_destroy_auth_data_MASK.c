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
struct TYPE_9__ {struct ieee80211_mgd_auth_data* auth_data; scalar_t__ flags; int /*<<< orphan*/  bssid; int /*<<< orphan*/  mtx; } ;
struct TYPE_8__ {TYPE_4__ mgd; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; TYPE_2__* local; } ;
struct ieee80211_mgd_auth_data {TYPE_5__* bss; } ;
struct TYPE_10__ {int /*<<< orphan*/  bssid; } ;
struct TYPE_6__ {int /*<<< orphan*/  wiphy; } ;
struct TYPE_7__ {TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSS_CHANGED_BSSID ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_mgd_auth_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_sub_if_data *sdata,
					bool assoc)
{
	struct ieee80211_mgd_auth_data *auth_data = sdata->u.mgd.auth_data;

	FUNC4(&sdata->u.mgd.mtx);

	if (!assoc) {
		FUNC6(sdata, auth_data->bss->bssid);

		FUNC5(sdata->u.mgd.bssid, 0, ETH_ALEN);
		FUNC1(sdata, BSS_CHANGED_BSSID);
		sdata->u.mgd.flags = 0;
		FUNC2(sdata);
	}

	FUNC0(sdata->local->hw.wiphy, auth_data->bss);
	FUNC3(auth_data);
	sdata->u.mgd.auth_data = NULL;
}