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
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum nl80211_cqm_rssi_threshold_event { ____Placeholder_nl80211_cqm_rssi_threshold_event } nl80211_cqm_rssi_threshold_event ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,int) ; 
 struct ieee80211_sub_if_data* FUNC2 (struct ieee80211_vif*) ; 

void FUNC3(struct ieee80211_vif *vif,
			       enum nl80211_cqm_rssi_threshold_event rssi_event,
			       gfp_t gfp)
{
	struct ieee80211_sub_if_data *sdata = FUNC2(vif);

	FUNC1(sdata, rssi_event);

	FUNC0(sdata->dev, rssi_event, gfp);
}