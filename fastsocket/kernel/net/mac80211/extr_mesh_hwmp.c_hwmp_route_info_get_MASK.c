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
typedef  scalar_t__ u32 ;
struct sta_info {int dummy; } ;
struct mesh_path {int flags; scalar_t__ sn; scalar_t__ metric; unsigned long exp_time; int /*<<< orphan*/  state_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  const* addr; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; struct ieee80211_local* local; } ;
struct ieee80211_mgmt {int /*<<< orphan*/ * sa; } ;
struct ieee80211_local {int dummy; } ;
typedef  enum mpath_frame_type { ____Placeholder_mpath_frame_type } mpath_frame_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mesh_path*) ; 
 scalar_t__ MAX_METRIC ; 
 int MESH_PATH_ACTIVE ; 
 int MESH_PATH_FIXED ; 
 int MESH_PATH_SN_VALID ; 
#define  MPATH_PREP 129 
#define  MPATH_PREQ 128 
 unsigned long FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 unsigned long FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 unsigned long FUNC10 (unsigned long) ; 
 scalar_t__ FUNC11 (struct ieee80211_local*,struct sta_info*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (struct mesh_path*) ; 
 struct mesh_path* FUNC14 (struct ieee80211_sub_if_data*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC15 (struct mesh_path*,struct sta_info*) ; 
 struct mesh_path* FUNC16 (struct ieee80211_sub_if_data*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC17 (struct mesh_path*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 struct sta_info* FUNC22 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (unsigned long,unsigned long) ; 

__attribute__((used)) static u32 FUNC24(struct ieee80211_sub_if_data *sdata,
			       struct ieee80211_mgmt *mgmt,
			       const u8 *hwmp_ie, enum mpath_frame_type action)
{
	struct ieee80211_local *local = sdata->local;
	struct mesh_path *mpath;
	struct sta_info *sta;
	bool fresh_info;
	const u8 *orig_addr, *ta;
	u32 orig_sn, orig_metric;
	unsigned long orig_lifetime, exp_time;
	u32 last_hop_metric, new_metric;
	bool process = true;

	FUNC18();
	sta = FUNC22(sdata, mgmt->sa);
	if (!sta) {
		FUNC19();
		return 0;
	}

	last_hop_metric = FUNC11(local, sta);
	/* Update and check originator routing info */
	fresh_info = true;

	switch (action) {
	case MPATH_PREQ:
		orig_addr = FUNC7(hwmp_ie);
		orig_sn = FUNC8(hwmp_ie);
		orig_lifetime = FUNC5(hwmp_ie);
		orig_metric = FUNC6(hwmp_ie);
		break;
	case MPATH_PREP:
		/* Originator here refers to the MP that was the target in the
		 * Path Request. We divert from the nomenclature in the draft
		 * so that we can easily use a single function to gather path
		 * information from both PREQ and PREP frames.
		 */
		orig_addr = FUNC3(hwmp_ie);
		orig_sn = FUNC4(hwmp_ie);
		orig_lifetime = FUNC1(hwmp_ie);
		orig_metric = FUNC2(hwmp_ie);
		break;
	default:
		FUNC19();
		return 0;
	}
	new_metric = orig_metric + last_hop_metric;
	if (new_metric < orig_metric)
		new_metric = MAX_METRIC;
	exp_time = FUNC10(orig_lifetime);

	if (FUNC12(orig_addr, sdata->vif.addr)) {
		/* This MP is the originator, we are not interested in this
		 * frame, except for updating transmitter's path info.
		 */
		process = false;
		fresh_info = false;
	} else {
		mpath = FUNC16(sdata, orig_addr);
		if (mpath) {
			FUNC20(&mpath->state_lock);
			if (mpath->flags & MESH_PATH_FIXED)
				fresh_info = false;
			else if ((mpath->flags & MESH_PATH_ACTIVE) &&
			    (mpath->flags & MESH_PATH_SN_VALID)) {
				if (FUNC9(mpath->sn, orig_sn) ||
				    (mpath->sn == orig_sn &&
				     new_metric >= mpath->metric)) {
					process = false;
					fresh_info = false;
				}
			}
		} else {
			mpath = FUNC14(sdata, orig_addr);
			if (FUNC0(mpath)) {
				FUNC19();
				return 0;
			}
			FUNC20(&mpath->state_lock);
		}

		if (fresh_info) {
			FUNC15(mpath, sta);
			mpath->flags |= MESH_PATH_SN_VALID;
			mpath->metric = new_metric;
			mpath->sn = orig_sn;
			mpath->exp_time = FUNC23(mpath->exp_time, exp_time)
					  ?  mpath->exp_time : exp_time;
			FUNC13(mpath);
			FUNC21(&mpath->state_lock);
			FUNC17(mpath);
			/* draft says preq_id should be saved to, but there does
			 * not seem to be any use for it, skipping by now
			 */
		} else
			FUNC21(&mpath->state_lock);
	}

	/* Update and check transmitter routing info */
	ta = mgmt->sa;
	if (FUNC12(orig_addr, ta))
		fresh_info = false;
	else {
		fresh_info = true;

		mpath = FUNC16(sdata, ta);
		if (mpath) {
			FUNC20(&mpath->state_lock);
			if ((mpath->flags & MESH_PATH_FIXED) ||
				((mpath->flags & MESH_PATH_ACTIVE) &&
					(last_hop_metric > mpath->metric)))
				fresh_info = false;
		} else {
			mpath = FUNC14(sdata, ta);
			if (FUNC0(mpath)) {
				FUNC19();
				return 0;
			}
			FUNC20(&mpath->state_lock);
		}

		if (fresh_info) {
			FUNC15(mpath, sta);
			mpath->metric = last_hop_metric;
			mpath->exp_time = FUNC23(mpath->exp_time, exp_time)
					  ?  mpath->exp_time : exp_time;
			FUNC13(mpath);
			FUNC21(&mpath->state_lock);
			FUNC17(mpath);
		} else
			FUNC21(&mpath->state_lock);
	}

	FUNC19();

	return process ? new_metric : 0;
}