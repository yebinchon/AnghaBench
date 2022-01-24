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
struct zonelist {TYPE_1__* _zonerefs; } ;
struct zone {int dummy; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  nodemask_t ;
typedef  int gfp_t ;
typedef  enum zone_type { ____Placeholder_zone_type } zone_type ;
struct TYPE_2__ {int /*<<< orphan*/  zone; } ;

/* Variables and functions */
 int ALLOC_CPUSET ; 
 int ALLOC_WMARK_LOW ; 
 int __GFP_HARDWALL ; 
 int __GFP_WAIT ; 
 struct page* FUNC0 (int,unsigned int,struct zonelist*,int,int /*<<< orphan*/ *,struct zone*,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct zonelist*,int,int /*<<< orphan*/ *,struct zone**) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct page* FUNC4 (int,int /*<<< orphan*/ *,unsigned int,struct zonelist*,int,int,struct zone*,int) ; 
 int gfp_allowed_mask ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,unsigned int,int,int) ; 
 scalar_t__ FUNC11 (int) ; 

struct page *
FUNC12(gfp_t gfp_mask, unsigned int order,
			struct zonelist *zonelist, nodemask_t *nodemask)
{
	enum zone_type high_zoneidx = FUNC5(gfp_mask);
	struct zone *preferred_zone;
	struct page *page;
	int migratetype = FUNC1(gfp_mask);

	gfp_mask &= gfp_allowed_mask;

	FUNC6(gfp_mask);

	FUNC7(gfp_mask & __GFP_WAIT);

	if (FUNC9(gfp_mask, order))
		return NULL;

	/*
	 * Check the zones suitable for the gfp_mask contain at least one
	 * valid zone. It's possible to have an empty zonelist as a result
	 * of GFP_THISNODE and a memoryless node
	 */
	if (FUNC11(!zonelist->_zonerefs->zone))
		return NULL;

	FUNC3();
	/* The preferred zone is used for statistics later */
	FUNC2(zonelist, high_zoneidx, nodemask, &preferred_zone);
	if (!preferred_zone) {
		FUNC8();
		return NULL;
	}

	/* First allocation attempt */
	page = FUNC4(gfp_mask|__GFP_HARDWALL, nodemask, order,
			zonelist, high_zoneidx, ALLOC_WMARK_LOW|ALLOC_CPUSET,
			preferred_zone, migratetype);
	if (FUNC11(!page))
		page = FUNC0(gfp_mask, order,
				zonelist, high_zoneidx, nodemask,
				preferred_zone, migratetype);
	FUNC8();

	FUNC10(page, order, gfp_mask, migratetype);
	return page;
}