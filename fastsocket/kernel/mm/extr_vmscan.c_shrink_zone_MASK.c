#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct zone {int dummy; } ;
struct scan_control {unsigned long nr_reclaimed; unsigned long nr_scanned; struct mem_cgroup* target_mem_cgroup; } ;
struct mem_cgroup_zone {struct zone* zone; struct mem_cgroup* mem_cgroup; } ;
struct mem_cgroup_reclaim_cookie {int priority; struct zone* zone; } ;
struct mem_cgroup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scan_control*) ; 
 struct mem_cgroup* FUNC1 (struct mem_cgroup*,struct mem_cgroup*,struct mem_cgroup_reclaim_cookie*) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_cgroup*,struct mem_cgroup*) ; 
 scalar_t__ FUNC3 (struct zone*,unsigned long,unsigned long,int,struct scan_control*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct mem_cgroup_zone*,struct scan_control*) ; 

__attribute__((used)) static void FUNC5(int priority, struct zone *zone,
			struct scan_control *sc)
{
	unsigned long nr_reclaimed, nr_scanned;

	do {
		struct mem_cgroup *root = sc->target_mem_cgroup;
		struct mem_cgroup_reclaim_cookie reclaim = {
			.zone = zone,
			.priority = priority,
		};
		struct mem_cgroup *memcg;

		nr_reclaimed = sc->nr_reclaimed;
		nr_scanned = sc->nr_scanned;

		memcg = FUNC1(root, NULL, &reclaim);
		do {
			struct mem_cgroup_zone mz = {
				.mem_cgroup = memcg,
				.zone = zone,
			};

			FUNC4(priority, &mz, sc);
			/*
			 * Limit reclaim has historically picked one
			 * memcg and scanned it with decreasing
			 * priority levels until nr_to_reclaim had
			 * been reclaimed.  This priority cycle is
			 * thus over after a single memcg.
			 *
			 * Direct reclaim and kswapd, on the other
			 * hand, have to scan all memory cgroups to
			 * fulfill the overall scan target for the
			 * zone.
			 */
			if (!FUNC0(sc)) {
				FUNC2(root, memcg);
				break;
			}
			memcg = FUNC1(root, memcg, &reclaim);
		} while (memcg);
	} while (FUNC3(zone, sc->nr_reclaimed - nr_reclaimed,
					 sc->nr_scanned - nr_scanned, priority,
					 sc));
}