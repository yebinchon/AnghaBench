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
typedef  int /*<<< orphan*/  u8 ;
struct net_bridge_port {TYPE_1__* br; void* designated_port; void* port_id; int /*<<< orphan*/  designated_bridge; int /*<<< orphan*/  priority; int /*<<< orphan*/  port_no; } ;
typedef  void* port_id ;
struct TYPE_2__ {int /*<<< orphan*/  bridge_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_bridge_port*) ; 
 scalar_t__ FUNC1 (struct net_bridge_port*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC5(struct net_bridge_port *p, u8 newprio)
{
	port_id new_port_id = FUNC2(newprio, p->port_no);

	if (FUNC1(p))
		p->designated_port = new_port_id;

	p->port_id = new_port_id;
	p->priority = newprio;
	if (!FUNC4(&p->br->bridge_id, &p->designated_bridge, 8) &&
	    p->port_id < p->designated_port) {
		FUNC0(p);
		FUNC3(p->br);
	}
}