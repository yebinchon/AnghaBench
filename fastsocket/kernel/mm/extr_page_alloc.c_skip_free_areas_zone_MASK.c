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
struct TYPE_2__ {int /*<<< orphan*/  node_id; } ;

/* Variables and functions */
 unsigned int SHOW_MEM_FILTER_NODES ; 
 int /*<<< orphan*/  cpuset_current_mems_allowed ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static bool FUNC3(unsigned int flags, const struct zone *zone)
{
	bool ret = false;

	if (!(flags & SHOW_MEM_FILTER_NODES))
		goto out;

	FUNC0();
	ret = !FUNC1(zone->zone_pgdat->node_id,
				cpuset_current_mems_allowed);
	FUNC2();
out:
	return ret;
}