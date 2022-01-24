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
typedef  int /*<<< orphan*/  u8 ;
struct sta_info {int /*<<< orphan*/  plink_state; } ;
struct ieee80211_sub_if_data {TYPE_1__* local; } ;
struct TYPE_2__ {scalar_t__ num_sta; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IEEE80211_STA_ASSOC ; 
 int /*<<< orphan*/  IEEE80211_STA_AUTH ; 
 int /*<<< orphan*/  IEEE80211_STA_AUTHORIZED ; 
 scalar_t__ MESH_MAX_PLINKS ; 
 int /*<<< orphan*/  NL80211_PLINK_LISTEN ; 
 int /*<<< orphan*/  WLAN_STA_WME ; 
 int /*<<< orphan*/  FUNC0 (struct sta_info*,int /*<<< orphan*/ ) ; 
 struct sta_info* FUNC1 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sta_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sta_info *
FUNC3(struct ieee80211_sub_if_data *sdata, u8 *hw_addr)
{
	struct sta_info *sta;

	if (sdata->local->num_sta >= MESH_MAX_PLINKS)
		return NULL;

	sta = FUNC1(sdata, hw_addr, GFP_KERNEL);
	if (!sta)
		return NULL;

	sta->plink_state = NL80211_PLINK_LISTEN;

	FUNC2(sta, IEEE80211_STA_AUTH);
	FUNC2(sta, IEEE80211_STA_ASSOC);
	FUNC2(sta, IEEE80211_STA_AUTHORIZED);

	FUNC0(sta, WLAN_STA_WME);

	return sta;
}