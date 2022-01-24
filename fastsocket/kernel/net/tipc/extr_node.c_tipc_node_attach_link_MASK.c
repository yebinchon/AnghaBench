#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct tipc_node {int link_cnt; struct link** links; int /*<<< orphan*/  addr; } ;
struct link {int /*<<< orphan*/  addr; TYPE_3__* b_ptr; } ;
struct TYPE_8__ {TYPE_1__** zones; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {size_t identity; TYPE_2__ publ; } ;
struct TYPE_5__ {int /*<<< orphan*/  links; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 TYPE_4__ tipc_net ; 
 struct tipc_node* FUNC2 (int /*<<< orphan*/ ) ; 
 struct tipc_node* FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 

struct tipc_node *FUNC5(struct link *l_ptr)
{
	struct tipc_node *n_ptr = FUNC3(l_ptr->addr);

	if (!n_ptr)
		n_ptr = FUNC2(l_ptr->addr);
	if (n_ptr) {
		u32 bearer_id = l_ptr->b_ptr->identity;
		char addr_string[16];

		if (n_ptr->link_cnt >= 2) {
			FUNC1("Attempt to create third link to %s\n",
			    FUNC0(addr_string, n_ptr->addr));
			return NULL;
		}

		if (!n_ptr->links[bearer_id]) {
			n_ptr->links[bearer_id] = l_ptr;
			tipc_net.zones[FUNC4(l_ptr->addr)]->links++;
			n_ptr->link_cnt++;
			return n_ptr;
		}
		FUNC1("Attempt to establish second link on <%s> to %s \n",
		    l_ptr->b_ptr->publ.name,
		    FUNC0(addr_string, l_ptr->addr));
	}
	return NULL;
}