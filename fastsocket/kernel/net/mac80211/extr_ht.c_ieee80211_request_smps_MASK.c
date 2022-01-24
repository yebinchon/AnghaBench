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
struct ieee80211_vif {scalar_t__ type; } ;
struct TYPE_6__ {int driver_smps_mode; int /*<<< orphan*/  request_smps_work; } ;
struct TYPE_5__ {TYPE_3__ mgd; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; TYPE_1__* local; } ;
typedef  enum ieee80211_smps_mode { ____Placeholder_ieee80211_smps_mode } ieee80211_smps_mode ;
struct TYPE_4__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int IEEE80211_SMPS_AUTOMATIC ; 
 int IEEE80211_SMPS_OFF ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ieee80211_sub_if_data* FUNC2 (struct ieee80211_vif*) ; 

void FUNC3(struct ieee80211_vif *vif,
			    enum ieee80211_smps_mode smps_mode)
{
	struct ieee80211_sub_if_data *sdata = FUNC2(vif);

	if (FUNC0(vif->type != NL80211_IFTYPE_STATION))
		return;

	if (FUNC0(smps_mode == IEEE80211_SMPS_OFF))
		smps_mode = IEEE80211_SMPS_AUTOMATIC;

	if (sdata->u.mgd.driver_smps_mode == smps_mode)
		return;

	sdata->u.mgd.driver_smps_mode = smps_mode;

	FUNC1(&sdata->local->hw,
			     &sdata->u.mgd.request_smps_work);
}