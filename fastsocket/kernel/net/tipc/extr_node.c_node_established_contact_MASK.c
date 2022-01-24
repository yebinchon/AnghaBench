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
struct TYPE_2__ {scalar_t__ supported; int /*<<< orphan*/  acked; } ;
struct tipc_node {int /*<<< orphan*/  addr; TYPE_1__ bclink; struct cluster* owner; } ;
struct cluster {int dummy; } ;
typedef  int /*<<< orphan*/  Handler ;

/* Variables and functions */
 int LOWEST_SLAVE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct cluster*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tipc_cltr_bcast_nodes ; 
 struct cluster* FUNC5 (int /*<<< orphan*/ ) ; 
 struct cluster* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cluster*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cluster*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tipc_highest_allowed_slave ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tipc_max_nodes ; 
 scalar_t__ tipc_named_node_up ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct tipc_node*) ; 
 int /*<<< orphan*/  tipc_own_addr ; 
 int /*<<< orphan*/  tipc_own_tag ; 

__attribute__((used)) static void FUNC13(struct tipc_node *n_ptr)
{
	struct cluster *c_ptr;

	FUNC0("node_established_contact:-> %x\n", n_ptr->addr);
	if (!FUNC12(n_ptr) && FUNC1(n_ptr->addr)) {
		FUNC9((Handler)tipc_named_node_up, n_ptr->addr);
	}

	/* Syncronize broadcast acks */
	n_ptr->bclink.acked = FUNC3();

	if (FUNC2(tipc_own_addr))
		return;
	if (!FUNC1(n_ptr->addr)) {
		/* Usage case 1 (see above) */
		c_ptr = FUNC6(tipc_own_addr);
		if (!c_ptr)
			c_ptr = FUNC5(tipc_own_addr);
		if (c_ptr)
			FUNC4(c_ptr, n_ptr->addr, 1,
						  tipc_max_nodes);
		return;
	}

	c_ptr = n_ptr->owner;
	if (FUNC2(n_ptr->addr)) {
		/* Usage case 2 (see above) */
		FUNC4(c_ptr, n_ptr->addr, 1, tipc_max_nodes);
		FUNC7(c_ptr, n_ptr->addr);
		return;
	}

	if (n_ptr->bclink.supported) {
		FUNC11(&tipc_cltr_bcast_nodes, n_ptr->addr);
		if (n_ptr->addr < tipc_own_addr)
			tipc_own_tag++;
	}

	/* Case 3 (see above) */
	FUNC10(n_ptr->addr);
	FUNC8(c_ptr, n_ptr->addr);
	FUNC4(c_ptr, n_ptr->addr, LOWEST_SLAVE,
				  tipc_highest_allowed_slave);
}