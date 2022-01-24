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
struct TYPE_2__ {int kswapd_max_order; int /*<<< orphan*/  kswapd_wait; int /*<<< orphan*/  node_id; } ;
typedef  TYPE_1__ pg_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct zone*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zone*) ; 
 int /*<<< orphan*/  FUNC2 (struct zone*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct zone*) ; 
 scalar_t__ FUNC7 (struct zone*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(struct zone *zone, int order)
{
	pg_data_t *pgdat;

	if (!FUNC2(zone))
		return;

	if (!FUNC0(zone, GFP_KERNEL))
		return;
	pgdat = zone->zone_pgdat;
	if (pgdat->kswapd_max_order < order)
		pgdat->kswapd_max_order = order;
	if (!FUNC4(&pgdat->kswapd_wait))
		return;
	if (FUNC7(zone, order, FUNC1(zone), 0, 0))
		return;

	FUNC3(pgdat->node_id, FUNC6(zone), order);
	FUNC5(&pgdat->kswapd_wait);
}