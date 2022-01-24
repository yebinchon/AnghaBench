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
struct zonelist {int /*<<< orphan*/ * _zonerefs; } ;
struct zone {int dummy; } ;
struct TYPE_3__ {struct zone* node_zones; } ;
typedef  TYPE_1__ pg_data_t ;
typedef  enum zone_type { ____Placeholder_zone_type } zone_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_NR_ZONES ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct zone*) ; 
 int /*<<< orphan*/  FUNC3 (struct zone*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(pg_data_t *pgdat, struct zonelist *zonelist,
				int nr_zones, enum zone_type zone_type)
{
	struct zone *zone;

	FUNC0(zone_type >= MAX_NR_ZONES);
	zone_type++;

	do {
		zone_type--;
		zone = pgdat->node_zones + zone_type;
		if (FUNC2(zone)) {
			FUNC3(zone,
				&zonelist->_zonerefs[nr_zones++]);
			FUNC1(zone_type);
		}

	} while (zone_type);
	return nr_zones;
}