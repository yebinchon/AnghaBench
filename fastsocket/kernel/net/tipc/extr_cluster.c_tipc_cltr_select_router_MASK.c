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
struct cluster {int highest_node; int /*<<< orphan*/ * nodes; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int tipc_max_nodes ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

u32 FUNC4(struct cluster *c_ptr, u32 ref)
{
	u32 n_num;
	u32 ulim = c_ptr->highest_node;
	u32 mask;
	u32 tstart;

	FUNC0(!FUNC1(c_ptr->addr));
	if (!ulim)
		return 0;

	/* Start entry must be random */
	mask = tipc_max_nodes;
	while (mask > ulim)
		mask >>= 1;
	tstart = ref & mask;
	n_num = tstart;

	/* Lookup upwards with wrap-around */
	do {
		if (FUNC2(c_ptr->nodes[n_num]))
			break;
	} while (++n_num <= ulim);
	if (n_num > ulim) {
		n_num = 1;
		do {
			if (FUNC2(c_ptr->nodes[n_num]))
				break;
		} while (++n_num < tstart);
		if (n_num == tstart)
			return 0;
	}
	FUNC0(n_num <= ulim);
	return FUNC3(c_ptr->nodes[n_num], ref);
}