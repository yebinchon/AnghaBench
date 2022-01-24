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
struct nodemask_scratch {int /*<<< orphan*/  mask2; int /*<<< orphan*/  mask1; } ;
struct TYPE_3__ {int /*<<< orphan*/  cpuset_mems_allowed; int /*<<< orphan*/  user_nodemask; } ;
struct mempolicy {size_t mode; int flags; TYPE_1__ w; } ;
typedef  int /*<<< orphan*/  nodemask_t ;
struct TYPE_4__ {int (* create ) (struct mempolicy*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int MPOL_F_RELATIVE_NODES ; 
 size_t MPOL_PREFERRED ; 
 size_t N_HIGH_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  const cpuset_current_mems_allowed ; 
 TYPE_2__* mpol_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct mempolicy*) ; 
 int /*<<< orphan*/ * node_states ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const) ; 
 int FUNC5 (struct mempolicy*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct mempolicy*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct mempolicy *pol,
		     const nodemask_t *nodes, struct nodemask_scratch *nsc)
{
	int ret;

	/* if mode is MPOL_DEFAULT, pol is NULL. This is right. */
	if (pol == NULL)
		return 0;
	/* Check N_HIGH_MEMORY */
	FUNC3(nsc->mask1,
		  cpuset_current_mems_allowed, node_states[N_HIGH_MEMORY]);

	FUNC0(!nodes);
	if (pol->mode == MPOL_PREFERRED && FUNC4(*nodes))
		nodes = NULL;	/* explicit local allocation */
	else {
		if (pol->flags & MPOL_F_RELATIVE_NODES)
			FUNC1(&nsc->mask2, nodes,&nsc->mask1);
		else
			FUNC3(nsc->mask2, *nodes, nsc->mask1);

		if (FUNC2(pol))
			pol->w.user_nodemask = *nodes;
		else
			pol->w.cpuset_mems_allowed =
						cpuset_current_mems_allowed;
	}

	if (nodes)
		ret = mpol_ops[pol->mode].create(pol, &nsc->mask2);
	else
		ret = mpol_ops[pol->mode].create(pol, NULL);
	return ret;
}