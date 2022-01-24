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
struct tipc_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct tipc_node* FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 struct tipc_node* FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (struct tipc_node*) ; 
 struct tipc_node* FUNC9 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (struct tipc_node*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

struct tipc_node *FUNC12(u32 addr, u32 selector)
{
	struct tipc_node *n_ptr;
	u32 router_addr;

	if (!FUNC3(addr))
		return NULL;

	/* Look for direct link to destination processsor */
	n_ptr = FUNC7(addr);
	if (n_ptr && FUNC8(n_ptr))
		return n_ptr;

	/* Cluster local system nodes *must* have direct links */
	if (!FUNC1(addr) && FUNC0(addr))
		return NULL;

	/* Look for cluster local router with direct link to node */
	router_addr = FUNC10(n_ptr, selector);
	if (router_addr)
		return FUNC9(router_addr, selector);

	/* Slave nodes can only be accessed within own cluster via a
	   known router with direct link -- if no router was found,give up */
	if (FUNC1(addr))
		return NULL;

	/* Inter zone/cluster -- find any direct link to remote cluster */
	addr = FUNC2(FUNC11(addr), FUNC4(addr), 0);
	n_ptr = FUNC5(addr, selector);
	if (n_ptr && FUNC8(n_ptr))
		return n_ptr;

	/* Last resort -- look for any router to anywhere in remote zone */
	router_addr =  FUNC6(addr, selector);
	if (router_addr)
		return FUNC9(router_addr, selector);

	return NULL;
}