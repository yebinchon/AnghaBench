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
struct cpuset {int /*<<< orphan*/  mems_allowed; struct cpuset* parent; } ;
typedef  int /*<<< orphan*/  nodemask_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t N_HIGH_MEMORY ; 
 int /*<<< orphan*/ * node_states ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const struct cpuset *cs, nodemask_t *pmask)
{
	while (cs && !FUNC2(cs->mems_allowed,
					node_states[N_HIGH_MEMORY]))
		cs = cs->parent;
	if (cs)
		FUNC1(*pmask, cs->mems_allowed,
					node_states[N_HIGH_MEMORY]);
	else
		*pmask = node_states[N_HIGH_MEMORY];
	FUNC0(!FUNC2(*pmask, node_states[N_HIGH_MEMORY]));
}