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
struct TYPE_2__ {int recv_info; } ;
struct link {int next_in_no; int /*<<< orphan*/  addr; int /*<<< orphan*/  b_ptr; int /*<<< orphan*/  owner; TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct link*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tipc_cfg_link_event ; 
 int /*<<< orphan*/  tipc_disc_link_event ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct link*) ; 

__attribute__((used)) static void FUNC4(struct link *l_ptr)
{
	l_ptr->next_in_no = l_ptr->stats.recv_info = 1;
	FUNC3(l_ptr->owner, l_ptr);
	FUNC2(l_ptr->b_ptr, l_ptr->addr);
	FUNC1(tipc_cfg_link_event, l_ptr, 1);
	if (!FUNC0(l_ptr->addr))
		FUNC1(tipc_disc_link_event, l_ptr, 1);
}