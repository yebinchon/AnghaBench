#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* debugfs_dir; } ;
struct TYPE_6__ {void* subdir_stations; } ;
struct ieee80211_sub_if_data {char* name; TYPE_2__ vif; TYPE_1__ debugfs; TYPE_5__* local; } ;
struct TYPE_9__ {TYPE_3__* wiphy; } ;
struct TYPE_10__ {TYPE_4__ hw; } ;
struct TYPE_8__ {void* debugfsdir; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sub_if_data*) ; 
 void* FUNC1 (char*,void*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 

void FUNC3(struct ieee80211_sub_if_data *sdata)
{
	char buf[10+IFNAMSIZ];

	FUNC2(buf, "netdev:%s", sdata->name);
	sdata->vif.debugfs_dir = FUNC1(buf,
		sdata->local->hw.wiphy->debugfsdir);
	if (sdata->vif.debugfs_dir)
		sdata->debugfs.subdir_stations = FUNC1("stations",
			sdata->vif.debugfs_dir);
	FUNC0(sdata);
}