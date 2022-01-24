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
struct scan_control {int dummy; } ;
struct mem_cgroup_zone {int dummy; } ;
typedef  enum lru_list { ____Placeholder_lru_list } lru_list ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mem_cgroup_zone*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,struct mem_cgroup_zone*,struct scan_control*,int,int) ; 
 unsigned long FUNC4 (unsigned long,struct mem_cgroup_zone*,struct scan_control*,int,int) ; 

__attribute__((used)) static unsigned long FUNC5(enum lru_list lru, unsigned long nr_to_scan,
				 struct mem_cgroup_zone *mz,
				 struct scan_control *sc, int priority)
{
	int file = FUNC2(lru);

	if (FUNC1(lru)) {
		if (FUNC0(mz, file))
			FUNC3(nr_to_scan, mz, sc, priority, file);
		return 0;
	}

	return FUNC4(nr_to_scan, mz, sc, priority, file);
}