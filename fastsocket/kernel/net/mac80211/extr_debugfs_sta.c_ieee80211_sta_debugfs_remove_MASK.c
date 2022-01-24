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
struct TYPE_2__ {int /*<<< orphan*/ * dir; } ;
struct sta_info {TYPE_1__ debugfs; int /*<<< orphan*/  sta; struct ieee80211_sub_if_data* sdata; struct ieee80211_local* local; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_local {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_local*,struct ieee80211_sub_if_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(struct sta_info *sta)
{
	struct ieee80211_local *local = sta->local;
	struct ieee80211_sub_if_data *sdata = sta->sdata;

	FUNC1(local, sdata, &sta->sta, sta->debugfs.dir);
	FUNC0(sta->debugfs.dir);
	sta->debugfs.dir = NULL;
}