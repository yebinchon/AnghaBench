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
struct TYPE_2__ {scalar_t__ dot11MeshHWMPRootMode; } ;
struct ieee80211_if_mesh {int /*<<< orphan*/  mesh_path_root_timer; int /*<<< orphan*/  wrkq_flags; TYPE_1__ mshcfg; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_ROOTMODE_ROOT ; 
 int /*<<< orphan*/  MESH_WORK_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct ieee80211_if_mesh *ifmsh)
{
	if (ifmsh->mshcfg.dot11MeshHWMPRootMode > IEEE80211_ROOTMODE_ROOT)
		FUNC2(MESH_WORK_ROOT, &ifmsh->wrkq_flags);
	else {
		FUNC0(MESH_WORK_ROOT, &ifmsh->wrkq_flags);
		/* stop running timer */
		FUNC1(&ifmsh->mesh_path_root_timer);
	}
}