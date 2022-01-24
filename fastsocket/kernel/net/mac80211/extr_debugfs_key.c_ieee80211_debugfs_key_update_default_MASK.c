#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  debugfs_dir; } ;
struct TYPE_6__ {int /*<<< orphan*/ * default_multicast_key; int /*<<< orphan*/ * default_unicast_key; } ;
struct ieee80211_sub_if_data {TYPE_3__ vif; TYPE_2__ debugfs; scalar_t__ default_multicast_key; TYPE_4__* local; scalar_t__ default_unicast_key; } ;
struct TYPE_5__ {int cnt; } ;
struct ieee80211_key {TYPE_1__ debugfs; } ;
struct TYPE_8__ {int /*<<< orphan*/  key_mtx; } ;

/* Variables and functions */
 void* FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ieee80211_key* FUNC2 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

void FUNC5(struct ieee80211_sub_if_data *sdata)
{
	char buf[50];
	struct ieee80211_key *key;

	if (!sdata->vif.debugfs_dir)
		return;

	FUNC3(&sdata->local->key_mtx);

	if (sdata->debugfs.default_unicast_key) {
		FUNC1(sdata->debugfs.default_unicast_key);
		sdata->debugfs.default_unicast_key = NULL;
	}

	if (sdata->default_unicast_key) {
		key = FUNC2(sdata->local,
					  sdata->default_unicast_key);
		FUNC4(buf, "../keys/%d", key->debugfs.cnt);
		sdata->debugfs.default_unicast_key =
			FUNC0("default_unicast_key",
					       sdata->vif.debugfs_dir, buf);
	}

	if (sdata->debugfs.default_multicast_key) {
		FUNC1(sdata->debugfs.default_multicast_key);
		sdata->debugfs.default_multicast_key = NULL;
	}

	if (sdata->default_multicast_key) {
		key = FUNC2(sdata->local,
					  sdata->default_multicast_key);
		FUNC4(buf, "../keys/%d", key->debugfs.cnt);
		sdata->debugfs.default_multicast_key =
			FUNC0("default_multicast_key",
					       sdata->vif.debugfs_dir, buf);
	}
}