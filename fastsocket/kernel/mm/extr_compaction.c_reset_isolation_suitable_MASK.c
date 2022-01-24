#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct zone {int dummy; } ;
struct TYPE_3__ {struct zone* node_zones; } ;
typedef  TYPE_1__ pg_data_t ;

/* Variables and functions */
 int MAX_NR_ZONES ; 
 int /*<<< orphan*/  FUNC0 (struct zone*) ; 
 int /*<<< orphan*/  FUNC1 (struct zone*) ; 

void FUNC2(pg_data_t *pgdat)
{
	int zoneid;

	for (zoneid = 0; zoneid < MAX_NR_ZONES; zoneid++) {
		struct zone *zone = &pgdat->node_zones[zoneid];
		if (!FUNC1(zone))
			continue;

		/* Only flush if a full compaction finished recently */
		FUNC0(zone);
	}
}