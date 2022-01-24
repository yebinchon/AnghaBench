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
struct mesh_path {int flags; scalar_t__ discovery_retries; int discovery_timeout; int /*<<< orphan*/  is_gate; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  exp_time; struct ieee80211_sub_if_data* sdata; } ;
struct ieee80211_sub_if_data {TYPE_1__* local; } ;
struct TYPE_2__ {scalar_t__ quiescing; } ;

/* Variables and functions */
 int MESH_PATH_REQ_QUEUED ; 
 int MESH_PATH_RESOLVED ; 
 int MESH_PATH_RESOLVING ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC0 (struct ieee80211_sub_if_data*) ; 
 scalar_t__ FUNC1 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct mesh_path*) ; 
 int FUNC3 (struct mesh_path*) ; 
 int /*<<< orphan*/  FUNC4 (struct mesh_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sub_if_data*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(unsigned long data)
{
	struct mesh_path *mpath = (void *) data;
	struct ieee80211_sub_if_data *sdata = mpath->sdata;
	int ret;

	if (sdata->local->quiescing)
		return;

	FUNC6(&mpath->state_lock);
	if (mpath->flags & MESH_PATH_RESOLVED ||
			(!(mpath->flags & MESH_PATH_RESOLVING))) {
		mpath->flags &= ~(MESH_PATH_RESOLVING | MESH_PATH_RESOLVED);
		FUNC7(&mpath->state_lock);
	} else if (mpath->discovery_retries < FUNC0(sdata)) {
		++mpath->discovery_retries;
		mpath->discovery_timeout *= 2;
		mpath->flags &= ~MESH_PATH_REQ_QUEUED;
		FUNC7(&mpath->state_lock);
		FUNC4(mpath, 0);
	} else {
		mpath->flags = 0;
		mpath->exp_time = jiffies;
		FUNC7(&mpath->state_lock);
		if (!mpath->is_gate && FUNC1(sdata) > 0) {
			ret = FUNC3(mpath);
			if (ret)
				FUNC5(sdata, "no gate was reachable\n");
		} else
			FUNC2(mpath);
	}
}