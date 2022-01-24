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
typedef  scalar_t__ u32 ;
struct tipc_node {scalar_t__ addr; int last_router; struct tipc_node* next; struct cluster* owner; int /*<<< orphan*/  nsub; int /*<<< orphan*/  lock; } ;
struct cluster {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_node*) ; 
 struct tipc_node* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  node_create_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct cluster*,struct tipc_node*) ; 
 struct cluster* FUNC7 (scalar_t__) ; 
 struct cluster* FUNC8 (scalar_t__) ; 
 struct tipc_node* tipc_nodes ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

struct tipc_node *FUNC10(u32 addr)
{
	struct cluster *c_ptr;
	struct tipc_node *n_ptr;
	struct tipc_node **curr_node;

	FUNC3(&node_create_lock);

	for (n_ptr = tipc_nodes; n_ptr; n_ptr = n_ptr->next) {
		if (addr < n_ptr->addr)
			break;
		if (addr == n_ptr->addr) {
			FUNC5(&node_create_lock);
			return n_ptr;
		}
	}

	n_ptr = FUNC2(sizeof(*n_ptr),GFP_ATOMIC);
	if (!n_ptr) {
		FUNC5(&node_create_lock);
		FUNC9("Node creation failed, no memory\n");
		return NULL;
	}

	c_ptr = FUNC8(addr);
	if (!c_ptr) {
		c_ptr = FUNC7(addr);
	}
	if (!c_ptr) {
		FUNC5(&node_create_lock);
		FUNC1(n_ptr);
		return NULL;
	}

	n_ptr->addr = addr;
		FUNC4(&n_ptr->lock);
	FUNC0(&n_ptr->nsub);
	n_ptr->owner = c_ptr;
	FUNC6(c_ptr, n_ptr);
	n_ptr->last_router = -1;

	/* Insert node into ordered list */
	for (curr_node = &tipc_nodes; *curr_node;
	     curr_node = &(*curr_node)->next) {
		if (addr < (*curr_node)->addr) {
			n_ptr->next = *curr_node;
			break;
		}
	}
	(*curr_node) = n_ptr;
	FUNC5(&node_create_lock);
	return n_ptr;
}