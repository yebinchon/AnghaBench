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
struct ieee80211_sub_if_data {int /*<<< orphan*/  vif; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
typedef  enum ieee80211_rssi_event { ____Placeholder_ieee80211_rssi_event } ieee80211_rssi_event ;
struct TYPE_2__ {int /*<<< orphan*/  (* rssi_callback ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int const) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*,struct ieee80211_sub_if_data*,int const) ; 

__attribute__((used)) static inline void FUNC3(struct ieee80211_local *local,
				     struct ieee80211_sub_if_data *sdata,
				     const enum ieee80211_rssi_event event)
{
	FUNC2(local, sdata, event);
	if (local->ops->rssi_callback)
		local->ops->rssi_callback(&local->hw, &sdata->vif, event);
	FUNC1(local);
}