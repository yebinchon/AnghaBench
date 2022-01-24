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
struct tid_ampdu_tx {int /*<<< orphan*/  pending; } ;
struct TYPE_9__ {int /*<<< orphan*/ * tid_tx; } ;
struct sta_info {TYPE_4__ ampdu_mlme; int /*<<< orphan*/  drv_unblock_wk; int /*<<< orphan*/ * tx_filtered; int /*<<< orphan*/ * ps_tx_buf; struct ieee80211_sub_if_data* sdata; } ;
struct ps_data {int /*<<< orphan*/  num_sta_ps; } ;
struct TYPE_10__ {scalar_t__ type; } ;
struct TYPE_7__ {struct ps_data ps; } ;
struct TYPE_8__ {TYPE_2__ mesh; } ;
struct ieee80211_sub_if_data {TYPE_5__ vif; TYPE_3__ u; TYPE_1__* bss; struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; int /*<<< orphan*/  total_ps_buffered; } ;
struct TYPE_6__ {struct ps_data ps; } ;

/* Variables and functions */
 int IEEE80211_NUM_ACS ; 
 int IEEE80211_NUM_TIDS ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_AP_VLAN ; 
 int /*<<< orphan*/  WLAN_STA_PS_STA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sta_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (struct tid_ampdu_tx*) ; 
 int /*<<< orphan*/  FUNC6 (struct sta_info*) ; 
 struct tid_ampdu_tx* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_local*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct sta_info*) ; 
 scalar_t__ FUNC11 (struct sta_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct sta_info *sta)
{
	int ac, i;
	struct tid_ampdu_tx *tid_tx;
	struct ieee80211_sub_if_data *sdata = sta->sdata;
	struct ieee80211_local *local = sdata->local;
	struct ps_data *ps;

	/*
	 * At this point, when being called as call_rcu callback,
	 * neither mac80211 nor the driver can reference this
	 * sta struct any more except by still existing timers
	 * associated with this station that we clean up below.
	 *
	 * Note though that this still uses the sdata and even
	 * calls the driver in AP and mesh mode, so interfaces
	 * of those types mush use call sta_info_flush_cleanup()
	 * (typically via sta_info_flush()) before deconfiguring
	 * the driver.
	 *
	 * In station mode, nothing happens here so it doesn't
	 * have to (and doesn't) do that, this is intentional to
	 * speed up roaming.
	 */

	if (FUNC11(sta, WLAN_STA_PS_STA)) {
		if (sta->sdata->vif.type == NL80211_IFTYPE_AP ||
		    sta->sdata->vif.type == NL80211_IFTYPE_AP_VLAN)
			ps = &sdata->bss->ps;
		else if (FUNC4(&sdata->vif))
			ps = &sdata->u.mesh.ps;
		else
			return;

		FUNC2(sta, WLAN_STA_PS_STA);

		FUNC0(&ps->num_sta_ps);
		FUNC10(sta);
	}

	for (ac = 0; ac < IEEE80211_NUM_ACS; ac++) {
		local->total_ps_buffered -= FUNC8(&sta->ps_tx_buf[ac]);
		FUNC3(&local->hw, &sta->ps_tx_buf[ac]);
		FUNC3(&local->hw, &sta->tx_filtered[ac]);
	}

	if (FUNC4(&sdata->vif))
		FUNC6(sta);

	FUNC1(&sta->drv_unblock_wk);

	/*
	 * Destroy aggregation state here. It would be nice to wait for the
	 * driver to finish aggregation stop and then clean up, but for now
	 * drivers have to handle aggregation stop being requested, followed
	 * directly by station destruction.
	 */
	for (i = 0; i < IEEE80211_NUM_TIDS; i++) {
		tid_tx = FUNC7(sta->ampdu_mlme.tid_tx[i]);
		if (!tid_tx)
			continue;
		FUNC3(&local->hw, &tid_tx->pending);
		FUNC5(tid_tx);
	}

	FUNC9(local, sta);
}