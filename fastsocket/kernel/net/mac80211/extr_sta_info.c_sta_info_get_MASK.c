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
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct sta_info {int /*<<< orphan*/  hnext; TYPE_1__ sta; struct ieee80211_sub_if_data* sdata; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  sta_mtx; int /*<<< orphan*/ * sta_hash; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct sta_info* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct sta_info *FUNC4(struct ieee80211_sub_if_data *sdata,
			      const u8 *addr)
{
	struct ieee80211_local *local = sdata->local;
	struct sta_info *sta;

	sta = FUNC3(local->sta_hash[FUNC0(addr)],
				    FUNC2(&local->sta_mtx));
	while (sta) {
		if (sta->sdata == sdata &&
		    FUNC1(sta->sta.addr, addr))
			break;
		sta = FUNC3(sta->hnext,
					    FUNC2(&local->sta_mtx));
	}
	return sta;
}