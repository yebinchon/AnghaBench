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
struct compact_control {int order; int sync; int contended; int /*<<< orphan*/  migratepages; int /*<<< orphan*/  freepages; struct zone* zone; int /*<<< orphan*/  migratetype; int /*<<< orphan*/  nr_migratepages; int /*<<< orphan*/  nr_freepages; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct zone*,struct compact_control*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

unsigned long FUNC5(struct zone *zone,
				 int order, gfp_t gfp_mask,
				 bool sync, bool *contended)
{
	unsigned long ret;
	struct compact_control cc = {
		.nr_freepages = 0,
		.nr_migratepages = 0,
		.order = order,
		.migratetype = FUNC2(gfp_mask),
		.zone = zone,
		.sync = sync,
	};
	FUNC0(&cc.freepages);
	FUNC0(&cc.migratepages);

	ret = FUNC3(zone, &cc);

	FUNC1(!FUNC4(&cc.freepages));
	FUNC1(!FUNC4(&cc.migratepages));

	*contended = cc.contended;
	return ret;
}