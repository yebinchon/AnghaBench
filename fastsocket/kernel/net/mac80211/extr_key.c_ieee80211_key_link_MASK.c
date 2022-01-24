#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sta_info {int /*<<< orphan*/ * gtk; int /*<<< orphan*/  ptk; } ;
struct ieee80211_sub_if_data {TYPE_2__* local; int /*<<< orphan*/ * keys; } ;
struct TYPE_3__ {int flags; int keyidx; } ;
struct ieee80211_key {struct sta_info* sta; struct ieee80211_sub_if_data* sdata; TYPE_2__* local; TYPE_1__ conf; } ;
struct TYPE_4__ {int /*<<< orphan*/  key_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IEEE80211_KEY_FLAG_PAIRWISE ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_key*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_key*,int) ; 
 int FUNC3 (struct ieee80211_key*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_key*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sub_if_data*,struct sta_info*,int,struct ieee80211_key*,struct ieee80211_key*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sub_if_data*) ; 
 struct ieee80211_key* FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct ieee80211_key *key,
		       struct ieee80211_sub_if_data *sdata,
		       struct sta_info *sta)
{
	struct ieee80211_key *old_key;
	int idx, ret;
	bool pairwise;

	FUNC0(!sdata);
	FUNC0(!key);

	pairwise = key->conf.flags & IEEE80211_KEY_FLAG_PAIRWISE;
	idx = key->conf.keyidx;
	key->local = sdata->local;
	key->sdata = sdata;
	key->sta = sta;

	FUNC8(&sdata->local->key_mtx);

	if (sta && pairwise)
		old_key = FUNC7(sdata->local, sta->ptk);
	else if (sta)
		old_key = FUNC7(sdata->local, sta->gtk[idx]);
	else
		old_key = FUNC7(sdata->local, sdata->keys[idx]);

	FUNC6(sdata);

	FUNC5(sdata, sta, pairwise, old_key, key);
	FUNC2(old_key, true);

	FUNC1(key);

	ret = FUNC3(key);

	if (ret)
		FUNC4(key, true);

	FUNC9(&sdata->local->key_mtx);

	return ret;
}