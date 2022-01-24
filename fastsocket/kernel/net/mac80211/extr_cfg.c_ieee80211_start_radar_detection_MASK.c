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
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct ieee80211_sub_if_data {int radar_required; int /*<<< orphan*/  dfs_cac_timer_work; struct ieee80211_local* local; int /*<<< orphan*/  needed_rx_chains; int /*<<< orphan*/  smps_mode; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; int /*<<< orphan*/  iflist_mtx; int /*<<< orphan*/  rx_chains; scalar_t__ scanning; int /*<<< orphan*/  roc_list; } ;
struct cfg80211_chan_def {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  IEEE80211_CHANCTX_SHARED ; 
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  IEEE80211_DFS_MIN_CAC_TIME_MS ; 
 int /*<<< orphan*/  IEEE80211_SMPS_OFF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (struct ieee80211_sub_if_data*,struct cfg80211_chan_def*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct wiphy *wiphy,
					   struct net_device *dev,
					   struct cfg80211_chan_def *chandef)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);
	struct ieee80211_local *local = sdata->local;
	unsigned long timeout;
	int err;

	if (!FUNC3(&local->roc_list) || local->scanning)
		return -EBUSY;

	/* whatever, but channel contexts should not complain about that one */
	sdata->smps_mode = IEEE80211_SMPS_OFF;
	sdata->needed_rx_chains = local->rx_chains;
	sdata->radar_required = true;

	FUNC5(&local->iflist_mtx);
	err = FUNC2(sdata, chandef,
					IEEE80211_CHANCTX_SHARED);
	FUNC6(&local->iflist_mtx);
	if (err)
		return err;

	timeout = FUNC4(IEEE80211_DFS_MIN_CAC_TIME_MS);
	FUNC1(&sdata->local->hw,
				     &sdata->dfs_cac_timer_work, timeout);

	return 0;
}