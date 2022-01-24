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
struct tipc_node {int dummy; } ;
struct cluster {int highest_node; struct tipc_node** nodes; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int tipc_max_nodes ; 
 scalar_t__ FUNC2 (struct tipc_node*) ; 

struct tipc_node *FUNC3(struct cluster *c_ptr, u32 selector)
{
	u32 n_num;
	u32 mask = tipc_max_nodes;
	u32 start_entry;

	FUNC0(!FUNC1(c_ptr->addr));
	if (!c_ptr->highest_node)
		return NULL;

	/* Start entry must be random */
	while (mask > c_ptr->highest_node) {
		mask >>= 1;
	}
	start_entry = (selector & mask) ? selector & mask : 1u;
	FUNC0(start_entry <= c_ptr->highest_node);

	/* Lookup upwards with wrap-around */
	for (n_num = start_entry; n_num <= c_ptr->highest_node; n_num++) {
		if (FUNC2(c_ptr->nodes[n_num]))
			return c_ptr->nodes[n_num];
	}
	for (n_num = 1; n_num < start_entry; n_num++) {
		if (FUNC2(c_ptr->nodes[n_num]))
			return c_ptr->nodes[n_num];
	}
	return NULL;
}