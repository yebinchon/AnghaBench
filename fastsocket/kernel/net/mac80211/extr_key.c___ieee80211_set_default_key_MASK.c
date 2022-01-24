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
struct ieee80211_sub_if_data {int /*<<< orphan*/  default_multicast_key; int /*<<< orphan*/  local; int /*<<< orphan*/  default_unicast_key; int /*<<< orphan*/ * keys; } ;
struct ieee80211_key {int dummy; } ;

/* Variables and functions */
 int NUM_DEFAULT_KEYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ieee80211_sub_if_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*) ; 
 struct ieee80211_key* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ieee80211_key*) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_sub_if_data *sdata,
					int idx, bool uni, bool multi)
{
	struct ieee80211_key *key = NULL;

	FUNC0(sdata->local);

	if (idx >= 0 && idx < NUM_DEFAULT_KEYS)
		key = FUNC3(sdata->local, sdata->keys[idx]);

	if (uni) {
		FUNC4(sdata->default_unicast_key, key);
		FUNC1(sdata->local, sdata, idx);
	}

	if (multi)
		FUNC4(sdata->default_multicast_key, key);

	FUNC2(sdata);
}