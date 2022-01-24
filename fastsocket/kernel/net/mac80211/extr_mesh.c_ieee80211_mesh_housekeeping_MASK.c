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
typedef  int /*<<< orphan*/  u32 ;
struct ieee80211_if_mesh {int /*<<< orphan*/  housekeeping_timer; } ;
struct TYPE_2__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_MESH_HOUSEKEEPING_INTERVAL ; 
 int /*<<< orphan*/  IEEE80211_MESH_PEER_INACTIVITY_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;
	u32 changed;

	FUNC1(sdata, IEEE80211_MESH_PEER_INACTIVITY_LIMIT);
	FUNC3(sdata);

	changed = FUNC2(sdata);
	FUNC0(sdata, changed);

	FUNC4(&ifmsh->housekeeping_timer,
		  FUNC5(jiffies +
				IEEE80211_MESH_HOUSEKEEPING_INTERVAL));
}