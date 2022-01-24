#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct tipc_node_subscr {TYPE_1__* node; int /*<<< orphan*/  nodesub_list; void* usr_handle; int /*<<< orphan*/  handle_node_down; } ;
typedef  int /*<<< orphan*/  net_ev_handler ;
struct TYPE_4__ {int /*<<< orphan*/  nsub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ tipc_own_addr ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 

void FUNC5(struct tipc_node_subscr *node_sub, u32 addr,
		       void *usr_handle, net_ev_handler handle_down)
{
	if (addr == tipc_own_addr) {
		node_sub->node = NULL;
		return;
	}

	node_sub->node = FUNC1(addr);
	if (!node_sub->node) {
		FUNC4("Node subscription rejected, unknown node 0x%x\n", addr);
		return;
	}
	node_sub->handle_node_down = handle_down;
	node_sub->usr_handle = usr_handle;

	FUNC2(node_sub->node);
	FUNC0(&node_sub->nodesub_list, &node_sub->node->nsub);
	FUNC3(node_sub->node);
}