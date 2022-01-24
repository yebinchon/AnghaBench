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
struct zonelist {int dummy; } ;
struct TYPE_2__ {int preferred_node; int /*<<< orphan*/  nodes; } ;
struct mempolicy {int mode; int flags; TYPE_1__ v; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  MPOL_BIND 130 
 int MPOL_F_LOCAL ; 
#define  MPOL_INTERLEAVE 129 
#define  MPOL_PREFERRED 128 
 int __GFP_THISNODE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct zonelist* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static struct zonelist *FUNC5(gfp_t gfp, struct mempolicy *policy,
	int nd)
{
	switch (policy->mode) {
	case MPOL_PREFERRED:
		if (!(policy->flags & MPOL_F_LOCAL))
			nd = policy->v.preferred_node;
		break;
	case MPOL_BIND:
		/*
		 * Normally, MPOL_BIND allocations are node-local within the
		 * allowed nodemask.  However, if __GFP_THISNODE is set and the
		 * current node is part of the mask, we use the zonelist for
		 * the first node in the mask instead.
		 */
		if (FUNC4(gfp & __GFP_THISNODE) &&
				FUNC4(!FUNC2(nd, policy->v.nodes)))
			nd = FUNC1(policy->v.nodes);
		break;
	case MPOL_INTERLEAVE: /* should not happen */
		break;
	default:
		FUNC0();
	}
	return FUNC3(nd, gfp);
}