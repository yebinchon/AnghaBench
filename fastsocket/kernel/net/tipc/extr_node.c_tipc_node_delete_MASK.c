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
typedef  size_t u32 ;
struct tipc_node {int /*<<< orphan*/  addr; int /*<<< orphan*/ * links; } ;

/* Variables and functions */
 size_t MAX_BEARERS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct tipc_node *n_ptr)
{
	if (!n_ptr)
		return;

#if 0
	/* Not needed because links are already deleted via tipc_bearer_stop() */

	u32 l_num;

	for (l_num = 0; l_num < MAX_BEARERS; l_num++) {
		link_delete(n_ptr->links[l_num]);
	}
#endif

	FUNC0("node %x deleted\n", n_ptr->addr);
	FUNC1(n_ptr);
}