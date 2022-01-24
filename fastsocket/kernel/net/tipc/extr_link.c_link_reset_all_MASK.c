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
struct tipc_node {scalar_t__* links; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 size_t MAX_BEARERS ; 
 int /*<<< orphan*/  TIPC_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  tipc_net_lock ; 
 struct tipc_node* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(unsigned long addr)
{
	struct tipc_node *n_ptr;
	char addr_string[16];
	u32 i;

	FUNC2(&tipc_net_lock);
	n_ptr = FUNC5((u32)addr);
	if (!n_ptr) {
		FUNC3(&tipc_net_lock);
		return;	/* node no longer exists */
	}

	FUNC6(n_ptr);

	FUNC8("Resetting all links to %s\n",
	     FUNC0(addr_string, n_ptr->addr));

	for (i = 0; i < MAX_BEARERS; i++) {
		if (n_ptr->links[i]) {
			FUNC1(n_ptr->links[i], TIPC_OUTPUT,
				   "Resetting link\n");
			FUNC4(n_ptr->links[i]);
		}
	}

	FUNC7(n_ptr);
	FUNC3(&tipc_net_lock);
}