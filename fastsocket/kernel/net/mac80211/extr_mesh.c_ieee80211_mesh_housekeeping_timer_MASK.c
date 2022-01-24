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
struct ieee80211_if_mesh {int /*<<< orphan*/  wrkq_flags; } ;
struct TYPE_2__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  work; TYPE_1__ u; struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  MESH_WORK_HOUSEKEEPING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(unsigned long data)
{
	struct ieee80211_sub_if_data *sdata = (void *) data;
	struct ieee80211_local *local = sdata->local;
	struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;

	FUNC1(MESH_WORK_HOUSEKEEPING, &ifmsh->wrkq_flags);

	FUNC0(&local->hw, &sdata->work);
}