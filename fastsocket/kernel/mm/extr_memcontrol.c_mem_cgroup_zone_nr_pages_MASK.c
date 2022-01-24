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
struct zone {TYPE_1__* zone_pgdat; } ;
struct mem_cgroup_per_zone {int dummy; } ;
struct mem_cgroup {int dummy; } ;
typedef  enum lru_list { ____Placeholder_lru_list } lru_list ;
struct TYPE_2__ {int node_id; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct mem_cgroup_per_zone*,int) ; 
 struct mem_cgroup_per_zone* FUNC1 (struct mem_cgroup*,int,int) ; 
 int FUNC2 (struct zone*) ; 

unsigned long FUNC3(struct mem_cgroup *memcg,
				       struct zone *zone,
				       enum lru_list lru)
{
	int nid = zone->zone_pgdat->node_id;
	int zid = FUNC2(zone);
	struct mem_cgroup_per_zone *mz = FUNC1(memcg, nid, zid);

	return FUNC0(mz, lru);
}