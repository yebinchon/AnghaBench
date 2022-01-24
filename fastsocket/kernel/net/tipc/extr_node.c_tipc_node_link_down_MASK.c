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
struct tipc_node {struct link** active_links; int /*<<< orphan*/  working_links; } ;
struct link {TYPE_1__* b_ptr; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  net_plane; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct link*) ; 
 int /*<<< orphan*/  FUNC4 (struct link*) ; 
 scalar_t__ FUNC5 (struct tipc_node*) ; 

void FUNC6(struct tipc_node *n_ptr, struct link *l_ptr)
{
	struct link **active;

	n_ptr->working_links--;

	if (!FUNC4(l_ptr)) {
		FUNC0("Lost standby link <%s> on network plane %c\n",
		     l_ptr->name, l_ptr->b_ptr->net_plane);
		return;
	}
	FUNC0("Lost link <%s> on network plane %c\n",
		l_ptr->name, l_ptr->b_ptr->net_plane);

	active = &n_ptr->active_links[0];
	if (active[0] == l_ptr)
		active[0] = active[1];
	if (active[1] == l_ptr)
		active[1] = active[0];
	if (active[0] == l_ptr)
		FUNC2(n_ptr);
	if (FUNC5(n_ptr))
		FUNC3(l_ptr);
	else
		FUNC1(n_ptr);
}