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
typedef  int /*<<< orphan*/  u32 ;
struct sta_info {scalar_t__ plink_state; struct ieee80211_sub_if_data* sdata; } ;
struct ieee80211_sub_if_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ NL80211_PLINK_BLOCKED ; 
 scalar_t__ NL80211_PLINK_ESTAB ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*) ; 

__attribute__((used)) static u32 FUNC4(struct sta_info *sta)
{
	struct ieee80211_sub_if_data *sdata = sta->sdata;
	u32 changed = 0;

	if (sta->plink_state == NL80211_PLINK_ESTAB)
		changed = FUNC3(sdata);
	sta->plink_state = NL80211_PLINK_BLOCKED;
	FUNC2(sta);

	FUNC1(sta);
	changed |= FUNC0(sdata);

	return changed;
}