#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct zonelist {int dummy; } ;
struct zone {int node; } ;
struct TYPE_3__ {int preferred_node; int /*<<< orphan*/  nodes; } ;
struct mempolicy {int flags; int mode; TYPE_1__ v; } ;
typedef  enum zone_type { ____Placeholder_zone_type } zone_type ;
struct TYPE_4__ {struct zonelist* node_zonelists; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  MPOL_BIND 130 
 int MPOL_F_LOCAL ; 
#define  MPOL_INTERLEAVE 129 
#define  MPOL_PREFERRED 128 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct zonelist*,int,int /*<<< orphan*/ *,struct zone**) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mempolicy*) ; 
 int FUNC5 () ; 

unsigned FUNC6(struct mempolicy *policy)
{
	if (!policy || policy->flags & MPOL_F_LOCAL)
		return FUNC5();

	switch (policy->mode) {
	case MPOL_PREFERRED:
		/*
		 * handled MPOL_F_LOCAL above
		 */
		return policy->v.preferred_node;

	case MPOL_INTERLEAVE:
		return FUNC4(policy);

	case MPOL_BIND: {
		/*
		 * Follow bind policy behavior and start allocation at the
		 * first node.
		 */
		struct zonelist *zonelist;
		struct zone *zone;
		enum zone_type highest_zoneidx = FUNC3(GFP_KERNEL);
		zonelist = &FUNC1(FUNC5())->node_zonelists[0];
		(void)FUNC2(zonelist, highest_zoneidx,
							&policy->v.nodes,
							&zone);
		return zone->node;
	}

	default:
		FUNC0();
	}
}