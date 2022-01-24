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
struct TYPE_6__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  flags; TYPE_3__ vif; } ;
struct TYPE_5__ {int flags; } ;
struct ieee80211_local {TYPE_2__ hw; TYPE_1__* ops; } ;
struct TYPE_4__ {int (* add_interface ) (TYPE_2__*,TYPE_3__*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int IEEE80211_HW_WANT_MONITOR_VIF ; 
 int /*<<< orphan*/  IEEE80211_SDATA_IN_DRIVER ; 
 scalar_t__ NL80211_IFTYPE_AP_VLAN ; 
 scalar_t__ NL80211_IFTYPE_MONITOR ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*,struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*,int) ; 

__attribute__((used)) static inline int FUNC5(struct ieee80211_local *local,
				    struct ieee80211_sub_if_data *sdata)
{
	int ret;

	FUNC1();

	if (FUNC0(sdata->vif.type == NL80211_IFTYPE_AP_VLAN ||
		    (sdata->vif.type == NL80211_IFTYPE_MONITOR &&
		     !(local->hw.flags & IEEE80211_HW_WANT_MONITOR_VIF))))
		return -EINVAL;

	FUNC3(local, sdata);
	ret = local->ops->add_interface(&local->hw, &sdata->vif);
	FUNC4(local, ret);

	if (ret == 0)
		sdata->flags |= IEEE80211_SDATA_IN_DRIVER;

	return ret;
}