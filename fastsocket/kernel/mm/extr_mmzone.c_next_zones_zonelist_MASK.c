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
struct zoneref {scalar_t__ zone; } ;
struct zone {int dummy; } ;
typedef  int /*<<< orphan*/  nodemask_t ;
typedef  enum zone_type { ____Placeholder_zone_type } zone_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct zone* FUNC1 (struct zoneref*) ; 
 int FUNC2 (struct zoneref*) ; 
 int /*<<< orphan*/  FUNC3 (struct zoneref*,int /*<<< orphan*/ *) ; 

struct zoneref *FUNC4(struct zoneref *z,
					enum zone_type highest_zoneidx,
					nodemask_t *nodes,
					struct zone **zone)
{
	/*
	 * Find the next suitable zone to use for the allocation.
	 * Only filter based on nodemask if it's set
	 */
	if (FUNC0(nodes == NULL))
		while (FUNC2(z) > highest_zoneidx)
			z++;
	else
		while (FUNC2(z) > highest_zoneidx ||
				(z->zone && !FUNC3(z, nodes)))
			z++;

	*zone = FUNC1(z);
	return z;
}