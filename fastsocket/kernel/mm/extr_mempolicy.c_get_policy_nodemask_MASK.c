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
struct TYPE_2__ {int /*<<< orphan*/  preferred_node; int /*<<< orphan*/  nodes; } ;
struct mempolicy {int mode; int flags; TYPE_1__ v; } ;
typedef  int /*<<< orphan*/  nodemask_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  MPOL_BIND 130 
 int MPOL_F_LOCAL ; 
#define  MPOL_INTERLEAVE 129 
#define  MPOL_PREFERRED 128 
 struct mempolicy default_policy ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mempolicy *p, nodemask_t *nodes)
{
	FUNC2(*nodes);
	if (p == &default_policy)
		return;

	switch (p->mode) {
	case MPOL_BIND:
		/* Fall through */
	case MPOL_INTERLEAVE:
		*nodes = p->v.nodes;
		break;
	case MPOL_PREFERRED:
		if (!(p->flags & MPOL_F_LOCAL))
			FUNC1(p->v.preferred_node, *nodes);
		/* else return empty node mask for local allocation */
		break;
	default:
		FUNC0();
	}
}