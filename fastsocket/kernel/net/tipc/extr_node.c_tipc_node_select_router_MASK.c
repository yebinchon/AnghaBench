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
typedef  int u32 ;
struct tipc_node {int last_router; int* routers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int tipc_max_nodes ; 

u32 FUNC4(struct tipc_node *n_ptr, u32 ref)
{
	u32 ulim;
	u32 mask;
	u32 start;
	u32 r;

	if (!n_ptr)
		return 0;

	if (n_ptr->last_router < 0)
		return 0;
	ulim = ((n_ptr->last_router + 1) * 32) - 1;

	/* Start entry must be random */
	mask = tipc_max_nodes;
	while (mask > ulim)
		mask >>= 1;
	start = ref & mask;
	r = start;

	/* Lookup upwards with wrap-around */
	do {
		if (((n_ptr->routers[r / 32]) >> (r % 32)) & 1)
			break;
	} while (++r <= ulim);
	if (r > ulim) {
		r = 1;
		do {
			if (((n_ptr->routers[r / 32]) >> (r % 32)) & 1)
				break;
		} while (++r < start);
		FUNC0(r != start);
	}
	FUNC0(r && (r <= ulim));
	return FUNC3(FUNC2(), FUNC1(), r);
}