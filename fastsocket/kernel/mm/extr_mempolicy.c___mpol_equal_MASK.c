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
struct mempolicy {int mode; int /*<<< orphan*/  flags; TYPE_1__ v; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  MPOL_BIND 130 
 int MPOL_DEFAULT ; 
#define  MPOL_INTERLEAVE 129 
#define  MPOL_PREFERRED 128 
 int /*<<< orphan*/  FUNC1 (struct mempolicy*,struct mempolicy*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct mempolicy *a, struct mempolicy *b)
{
	if (!a || !b)
		return 0;
	if (a->mode != b->mode)
		return 0;
	if (a->mode != MPOL_DEFAULT && !FUNC1(a, b))
		return 0;
	switch (a->mode) {
	case MPOL_BIND:
		/* Fall through */
	case MPOL_INTERLEAVE:
		return FUNC2(a->v.nodes, b->v.nodes);
	case MPOL_PREFERRED:
		return a->v.preferred_node == b->v.preferred_node &&
			a->flags == b->flags;
	default:
		FUNC0();
		return 0;
	}
}