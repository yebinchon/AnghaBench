#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int congested; } ;
struct port {int waiting_pkts; int /*<<< orphan*/  wait_list; TYPE_1__ publ; struct link* congested_link; int /*<<< orphan*/  wakeup; } ;
struct TYPE_4__ {int /*<<< orphan*/  link_congs; } ;
struct link {TYPE_2__ stats; int /*<<< orphan*/  waiting_ports; } ;

/* Variables and functions */
 int ELINKCONG ; 
 int FUNC0 (struct link*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tipc_port_list_lock ; 
 struct port* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct port*) ; 

__attribute__((used)) static int FUNC7(struct link *l_ptr, u32 origport, u32 sz)
{
	struct port *p_ptr;

	FUNC3(&tipc_port_list_lock);
	p_ptr = FUNC5(origport);
	if (p_ptr) {
		if (!p_ptr->wakeup)
			goto exit;
		if (!FUNC2(&p_ptr->wait_list))
			goto exit;
		p_ptr->congested_link = l_ptr;
		p_ptr->publ.congested = 1;
		p_ptr->waiting_pkts = 1 + ((sz - 1) / FUNC0(l_ptr));
		FUNC1(&p_ptr->wait_list, &l_ptr->waiting_ports);
		l_ptr->stats.link_congs++;
exit:
		FUNC6(p_ptr);
	}
	FUNC4(&tipc_port_list_lock);
	return -ELINKCONG;
}