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
struct TYPE_7__ {int /*<<< orphan*/  bc_buf; } ;
struct ieee80211_if_mesh {int /*<<< orphan*/  mesh_path_timer; int /*<<< orphan*/  mesh_path_root_timer; int /*<<< orphan*/  housekeeping_timer; TYPE_3__ ps; int /*<<< orphan*/  mtx; int /*<<< orphan*/  beacon; scalar_t__ mesh_id_len; } ;
struct TYPE_8__ {struct ieee80211_if_mesh mesh; } ;
struct TYPE_5__ {int enable_beacon; } ;
struct TYPE_6__ {TYPE_1__ bss_conf; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  work; TYPE_4__ u; int /*<<< orphan*/  state; TYPE_2__ vif; int /*<<< orphan*/  dev; struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  iff_allmultis; int /*<<< orphan*/  fif_other_bss; int /*<<< orphan*/  total_ps_buffered; } ;
struct beacon_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSS_CHANGED_BEACON_ENABLED ; 
 int /*<<< orphan*/  SDATA_STATE_OFFCHANNEL_BEACON_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC6 (struct beacon_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct beacon_data* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_head ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_sub_if_data*) ; 

void FUNC17(struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_local *local = sdata->local;
	struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;
	struct beacon_data *bcn;

	FUNC11(sdata->dev);

	/* stop the beacon */
	ifmsh->mesh_id_len = 0;
	sdata->vif.bss_conf.enable_beacon = false;
	FUNC2(SDATA_STATE_OFFCHANNEL_BEACON_STOPPED, &sdata->state);
	FUNC4(sdata, BSS_CHANGED_BEACON_ENABLED);
	FUNC9(&ifmsh->mtx);
	bcn = FUNC13(ifmsh->beacon,
					FUNC7(&ifmsh->mtx));
	FUNC12(ifmsh->beacon, NULL);
	FUNC6(bcn, rcu_head);
	FUNC10(&ifmsh->mtx);

	/* flush STAs and mpaths on this iface */
	FUNC16(sdata);
	FUNC8(sdata);

	/* free all potentially still buffered group-addressed frames */
	local->total_ps_buffered -= FUNC14(&ifmsh->ps.bc_buf);
	FUNC15(&ifmsh->ps.bc_buf);

	FUNC3(&sdata->u.mesh.housekeeping_timer);
	FUNC3(&sdata->u.mesh.mesh_path_root_timer);
	FUNC3(&sdata->u.mesh.mesh_path_timer);
	/*
	 * If the timer fired while we waited for it, it will have
	 * requeued the work. Now the work will be running again
	 * but will not rearm the timer again because it checks
	 * whether the interface is running, which, at this point,
	 * it no longer is.
	 */
	FUNC1(&sdata->work);

	local->fif_other_bss--;
	FUNC0(&local->iff_allmultis);
	FUNC5(local);
}