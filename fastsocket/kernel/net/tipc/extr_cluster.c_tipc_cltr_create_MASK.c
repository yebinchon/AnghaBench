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
typedef  int /*<<< orphan*/  u32 ;
struct cluster {int highest_slave; struct _zone* owner; struct cluster* nodes; scalar_t__ highest_node; int /*<<< orphan*/  addr; } ;
struct _zone {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int LOWEST_SLAVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct cluster* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cluster*) ; 
 struct cluster* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct cluster* tipc_local_nodes ; 
 int tipc_max_nodes ; 
 int tipc_max_slaves ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct _zone*,struct cluster*) ; 
 struct _zone* FUNC8 (int /*<<< orphan*/ ) ; 
 struct _zone* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

struct cluster *FUNC11(u32 addr)
{
	struct _zone *z_ptr;
	struct cluster *c_ptr;
	int max_nodes;

	c_ptr = FUNC3(sizeof(*c_ptr), GFP_ATOMIC);
	if (c_ptr == NULL) {
		FUNC10("Cluster creation failure, no memory\n");
		return NULL;
	}

	c_ptr->addr = FUNC4(FUNC6(addr), FUNC5(addr), 0);
	if (FUNC0(addr))
		max_nodes = LOWEST_SLAVE + tipc_max_slaves;
	else
		max_nodes = tipc_max_nodes + 1;

	c_ptr->nodes = FUNC1(max_nodes + 1, sizeof(void*), GFP_ATOMIC);
	if (c_ptr->nodes == NULL) {
		FUNC10("Cluster creation failure, no memory for node area\n");
		FUNC2(c_ptr);
		return NULL;
	}

	if (FUNC0(addr))
		tipc_local_nodes = c_ptr->nodes;
	c_ptr->highest_slave = LOWEST_SLAVE - 1;
	c_ptr->highest_node = 0;

	z_ptr = FUNC9(FUNC6(addr));
	if (!z_ptr) {
		z_ptr = FUNC8(addr);
	}
	if (!z_ptr) {
		FUNC2(c_ptr->nodes);
		FUNC2(c_ptr);
		return NULL;
	}

	FUNC7(z_ptr, c_ptr);
	c_ptr->owner = z_ptr;
	return c_ptr;
}