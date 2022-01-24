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
struct sta_info {int /*<<< orphan*/ * gtk; int /*<<< orphan*/  ptk; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/ * keys; int /*<<< orphan*/  default_mgmt_key; int /*<<< orphan*/  local; int /*<<< orphan*/  default_multicast_key; int /*<<< orphan*/  default_unicast_key; int /*<<< orphan*/  key_list; } ;
struct TYPE_2__ {int keyidx; } ;
struct ieee80211_key {int /*<<< orphan*/  list; TYPE_1__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,int) ; 
 struct ieee80211_key* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct ieee80211_key*) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_sub_if_data *sdata,
				  struct sta_info *sta,
				  bool pairwise,
				  struct ieee80211_key *old,
				  struct ieee80211_key *new)
{
	int idx;
	bool defunikey, defmultikey, defmgmtkey;

	if (new)
		FUNC4(&new->list, &sdata->key_list);

	if (sta && pairwise) {
		FUNC6(sta->ptk, new);
	} else if (sta) {
		if (old)
			idx = old->conf.keyidx;
		else
			idx = new->conf.keyidx;
		FUNC6(sta->gtk[idx], new);
	} else {
		FUNC0(new && old && new->conf.keyidx != old->conf.keyidx);

		if (old)
			idx = old->conf.keyidx;
		else
			idx = new->conf.keyidx;

		defunikey = old &&
			old == FUNC3(sdata->local,
						sdata->default_unicast_key);
		defmultikey = old &&
			old == FUNC3(sdata->local,
						sdata->default_multicast_key);
		defmgmtkey = old &&
			old == FUNC3(sdata->local,
						sdata->default_mgmt_key);

		if (defunikey && !new)
			FUNC1(sdata, -1, true, false);
		if (defmultikey && !new)
			FUNC1(sdata, -1, false, true);
		if (defmgmtkey && !new)
			FUNC2(sdata, -1);

		FUNC6(sdata->keys[idx], new);
		if (defunikey && new)
			FUNC1(sdata, new->conf.keyidx,
						    true, false);
		if (defmultikey && new)
			FUNC1(sdata, new->conf.keyidx,
						    false, true);
		if (defmgmtkey && new)
			FUNC2(sdata,
							 new->conf.keyidx);
	}

	if (old)
		FUNC5(&old->list);
}