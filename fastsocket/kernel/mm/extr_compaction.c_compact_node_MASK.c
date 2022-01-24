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
struct compact_control {int order; int sync; int /*<<< orphan*/  migratepages; int /*<<< orphan*/  freepages; struct zone* zone; int /*<<< orphan*/  nr_migratepages; int /*<<< orphan*/  nr_freepages; } ;
struct TYPE_3__ {struct zone* node_zones; } ;
typedef  TYPE_1__ pg_data_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MAX_NR_ZONES ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct zone*) ; 
 int /*<<< orphan*/  FUNC4 (struct zone*,struct compact_control*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int nr_node_ids ; 
 int /*<<< orphan*/  FUNC8 (struct zone*) ; 

__attribute__((used)) static int FUNC9(int nid)
{
	int zoneid;
	pg_data_t *pgdat;
	struct zone *zone;

	if (nid < 0 || nid >= nr_node_ids || !FUNC7(nid))
		return -EINVAL;
	pgdat = FUNC1(nid);

	/* Flush pending updates to the LRU lists */
	FUNC6();

	for (zoneid = 0; zoneid < MAX_NR_ZONES; zoneid++) {
		struct compact_control cc = {
			.nr_freepages = 0,
			.nr_migratepages = 0,
			.order = -1,
			.sync = true,
		};

		zone = &pgdat->node_zones[zoneid];
		if (!FUNC8(zone))
			continue;

		cc.zone = zone;
		FUNC0(&cc.freepages);
		FUNC0(&cc.migratepages);

		FUNC3(zone);
		FUNC4(zone, &cc);

		FUNC2(!FUNC5(&cc.freepages));
		FUNC2(!FUNC5(&cc.migratepages));
	}

	return 0;
}