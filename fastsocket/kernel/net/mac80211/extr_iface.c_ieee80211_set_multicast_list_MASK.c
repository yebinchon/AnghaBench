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
struct net_device {int flags; int /*<<< orphan*/  mc_count; int /*<<< orphan*/  mc_list; int /*<<< orphan*/  addr_len; int /*<<< orphan*/  mc; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {int flags; TYPE_1__ vif; struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  reconfig_filter; int /*<<< orphan*/  hw; int /*<<< orphan*/  filter_lock; int /*<<< orphan*/  mc_count; int /*<<< orphan*/  mc_list; int /*<<< orphan*/  iff_promiscs; int /*<<< orphan*/  iff_allmultis; } ;

/* Variables and functions */
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 int IEEE80211_SDATA_ALLMULTI ; 
 int IEEE80211_SDATA_PROMISC ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_AP_VLAN ; 
 scalar_t__ NL80211_IFTYPE_MONITOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_local*,struct ieee80211_sub_if_data*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct net_device *dev)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);
	struct ieee80211_local *local = sdata->local;
	int allmulti, promisc, sdata_allmulti, sdata_promisc;

	allmulti = !!(dev->flags & IFF_ALLMULTI);
	promisc = !!(dev->flags & IFF_PROMISC);
	sdata_allmulti = !!(sdata->flags & IEEE80211_SDATA_ALLMULTI);
	sdata_promisc = !!(sdata->flags & IEEE80211_SDATA_PROMISC);

	if (allmulti != sdata_allmulti) {
		if (dev->flags & IFF_ALLMULTI)
			FUNC4(&local->iff_allmultis);
		else
			FUNC3(&local->iff_allmultis);
		sdata->flags ^= IEEE80211_SDATA_ALLMULTI;
	}

	if (promisc != sdata_promisc) {
		if (dev->flags & IFF_PROMISC)
			FUNC4(&local->iff_promiscs);
		else
			FUNC3(&local->iff_promiscs);
		sdata->flags ^= IEEE80211_SDATA_PROMISC;
	}

	/*
	 * TODO: If somebody needs this on AP interfaces,
	 *	 it can be enabled easily but multicast
	 *	 addresses from VLANs need to be synced.
	 */
	if (sdata->vif.type != NL80211_IFTYPE_MONITOR &&
	    sdata->vif.type != NL80211_IFTYPE_AP_VLAN &&
	    sdata->vif.type != NL80211_IFTYPE_AP)
#if 0 /* Not in RHEL */
		drv_set_multicast_list(local, sdata, &dev->mc);
#else
		FUNC5(local, sdata, dev->mc_count,
				       dev->mc_list);
#endif

	FUNC7(&local->filter_lock);
#if 0 /* Not in RHEL */
	__hw_addr_sync(&local->mc_list, &dev->mc, dev->addr_len);
#else
	FUNC1(&local->mc_list, &local->mc_count,
			&dev->mc_list, &dev->mc_count);
#endif
	FUNC8(&local->filter_lock);
	FUNC6(&local->hw, &local->reconfig_filter);
}