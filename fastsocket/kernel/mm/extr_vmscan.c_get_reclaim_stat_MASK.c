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
struct zone_reclaim_stat {int dummy; } ;
struct mem_cgroup_zone {TYPE_1__* zone; int /*<<< orphan*/  mem_cgroup; } ;
struct TYPE_2__ {struct zone_reclaim_stat reclaim_stat; } ;

/* Variables and functions */
 struct zone_reclaim_stat* FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_cgroup_zone*) ; 

__attribute__((used)) static struct zone_reclaim_stat *FUNC2(struct mem_cgroup_zone *mz)
{
	if (!FUNC1(mz))
		return FUNC0(mz->mem_cgroup, mz->zone);

	return &mz->zone->reclaim_stat;
}