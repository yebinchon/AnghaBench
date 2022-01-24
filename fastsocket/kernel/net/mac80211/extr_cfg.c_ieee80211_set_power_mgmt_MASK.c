#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wiphy {int dummy; } ;
struct net_device {int /*<<< orphan*/  ieee80211_ptr; } ;
struct TYPE_6__ {int powersave; int /*<<< orphan*/  mtx; int /*<<< orphan*/  req_smps; } ;
struct TYPE_7__ {TYPE_2__ mgd; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; TYPE_1__ vif; } ;
struct TYPE_8__ {int flags; } ;
struct ieee80211_local {int dynamic_ps_forced_timeout; TYPE_4__ hw; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  IEEE80211_CONF_CHANGE_PS ; 
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 int IEEE80211_HW_SUPPORTS_DYNAMIC_PS ; 
 int IEEE80211_HW_SUPPORTS_PS ; 
 scalar_t__ NL80211_IFTYPE_MESH_POINT ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct ieee80211_local* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct wiphy *wiphy, struct net_device *dev,
				    bool enabled, int timeout)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);
	struct ieee80211_local *local = FUNC7(dev->ieee80211_ptr);

	if (sdata->vif.type != NL80211_IFTYPE_STATION &&
	    sdata->vif.type != NL80211_IFTYPE_MESH_POINT)
		return -EOPNOTSUPP;

	if (!(local->hw.flags & IEEE80211_HW_SUPPORTS_PS))
		return -EOPNOTSUPP;

	if (enabled == sdata->u.mgd.powersave &&
	    timeout == local->dynamic_ps_forced_timeout)
		return 0;

	sdata->u.mgd.powersave = enabled;
	local->dynamic_ps_forced_timeout = timeout;

	/* no change, but if automatic follow powersave */
	FUNC5(&sdata->u.mgd.mtx);
	FUNC1(sdata, sdata->u.mgd.req_smps);
	FUNC6(&sdata->u.mgd.mtx);

	if (local->hw.flags & IEEE80211_HW_SUPPORTS_DYNAMIC_PS)
		FUNC2(local, IEEE80211_CONF_CHANGE_PS);

	FUNC3(local, -1);
	FUNC4(sdata);

	return 0;
}