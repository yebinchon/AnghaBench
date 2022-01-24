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
struct zone {TYPE_1__* zone_pgdat; } ;
struct mem_cgroup_per_zone {struct zone_reclaim_stat reclaim_stat; } ;
struct mem_cgroup {int dummy; } ;
struct TYPE_2__ {int node_id; } ;

/* Variables and functions */
 struct mem_cgroup_per_zone* FUNC0 (struct mem_cgroup*,int,int) ; 
 int FUNC1 (struct zone*) ; 

struct zone_reclaim_stat *FUNC2(struct mem_cgroup *memcg,
						      struct zone *zone)
{
	int nid = zone->zone_pgdat->node_id;
	int zid = FUNC1(zone);
	struct mem_cgroup_per_zone *mz = FUNC0(memcg, nid, zid);

	return &mz->reclaim_stat;
}