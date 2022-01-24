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
struct tipc_node {struct link** active_links; } ;
struct link {int dummy; } ;

/* Variables and functions */
 scalar_t__ MAX_MSG_SIZE ; 
 scalar_t__ MAX_PKT_DEFAULT ; 
 scalar_t__ FUNC0 (struct link*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tipc_net_lock ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_node*) ; 
 struct tipc_node* FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_node*) ; 
 scalar_t__ tipc_own_addr ; 

u32 FUNC6(u32 dest, u32 selector)
{
	struct tipc_node *n_ptr;
	struct link *l_ptr;
	u32 res = MAX_PKT_DEFAULT;

	if (dest == tipc_own_addr)
		return MAX_MSG_SIZE;

	FUNC1(&tipc_net_lock);
	n_ptr = FUNC4(dest, selector);
	if (n_ptr) {
		FUNC3(n_ptr);
		l_ptr = n_ptr->active_links[selector & 1];
		if (l_ptr)
			res = FUNC0(l_ptr);
		FUNC5(n_ptr);
	}
	FUNC2(&tipc_net_lock);
	return res;
}