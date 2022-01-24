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
struct ieee80211_if_managed {int flags; int /*<<< orphan*/  mtx; scalar_t__ probe_send_count; int /*<<< orphan*/  associated; } ;
struct TYPE_3__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_2__* local; int /*<<< orphan*/  vif; TYPE_1__ u; } ;
struct TYPE_4__ {int /*<<< orphan*/  iflist_mtx; int /*<<< orphan*/  mtx; scalar_t__ scanning; scalar_t__ tmp_channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IEEE80211_STA_BEACON_POLL ; 
 int IEEE80211_STA_CONNECTION_POLL ; 
 int /*<<< orphan*/  NL80211_CQM_RSSI_BEACON_LOSS_EVENT ; 
 int /*<<< orphan*/  beacon_loss_count ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_sub_if_data *sdata,
				   bool beacon)
{
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
	bool already = false;

	if (!FUNC3(sdata))
		return;

	FUNC5(&ifmgd->mtx);

	if (!ifmgd->associated)
		goto out;

	FUNC5(&sdata->local->mtx);

	if (sdata->local->tmp_channel || sdata->local->scanning) {
		FUNC6(&sdata->local->mtx);
		goto out;
	}

	if (beacon) {
		FUNC4(sdata,
				     "detected beacon loss from AP (missed %d beacons) - probing\n",
				     beacon_loss_count);

		FUNC0(&sdata->vif,
					  NL80211_CQM_RSSI_BEACON_LOSS_EVENT,
					  GFP_KERNEL);
	}

	/*
	 * The driver/our work has already reported this event or the
	 * connection monitoring has kicked in and we have already sent
	 * a probe request. Or maybe the AP died and the driver keeps
	 * reporting until we disassociate...
	 *
	 * In either case we have to ignore the current call to this
	 * function (except for setting the correct probe reason bit)
	 * because otherwise we would reset the timer every time and
	 * never check whether we received a probe response!
	 */
	if (ifmgd->flags & (IEEE80211_STA_BEACON_POLL |
			    IEEE80211_STA_CONNECTION_POLL))
		already = true;

	if (beacon)
		ifmgd->flags |= IEEE80211_STA_BEACON_POLL;
	else
		ifmgd->flags |= IEEE80211_STA_CONNECTION_POLL;

	FUNC6(&sdata->local->mtx);

	if (already)
		goto out;

	FUNC5(&sdata->local->iflist_mtx);
	FUNC2(sdata->local, -1);
	FUNC6(&sdata->local->iflist_mtx);

	ifmgd->probe_send_count = 0;
	FUNC1(sdata);
 out:
	FUNC6(&ifmgd->mtx);
}