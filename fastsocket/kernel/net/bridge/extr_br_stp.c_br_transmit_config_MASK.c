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
struct TYPE_2__ {scalar_t__ expires; } ;
struct net_bridge_port {int config_pending; int /*<<< orphan*/  hold_timer; scalar_t__ topology_change_ack; TYPE_1__ message_age_timer; int /*<<< orphan*/  port_id; struct net_bridge* br; } ;
struct net_bridge {scalar_t__ max_age; int /*<<< orphan*/  forward_delay; int /*<<< orphan*/  hello_time; int /*<<< orphan*/  root_port; int /*<<< orphan*/  bridge_id; int /*<<< orphan*/  root_path_cost; int /*<<< orphan*/  designated_root; int /*<<< orphan*/  topology_change; } ;
struct br_config_bpdu {scalar_t__ message_age; scalar_t__ max_age; int /*<<< orphan*/  forward_delay; int /*<<< orphan*/  hello_time; int /*<<< orphan*/  port_id; int /*<<< orphan*/  bridge_id; int /*<<< orphan*/  root_path_cost; int /*<<< orphan*/  root; scalar_t__ topology_change_ack; int /*<<< orphan*/  topology_change; } ;

/* Variables and functions */
 scalar_t__ BR_HOLD_TIME ; 
 scalar_t__ MESSAGE_AGE_INCR ; 
 struct net_bridge_port* FUNC0 (struct net_bridge*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge_port*,struct br_config_bpdu*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct net_bridge_port *p)
{
	struct br_config_bpdu bpdu;
	struct net_bridge *br;


	if (FUNC5(&p->hold_timer)) {
		p->config_pending = 1;
		return;
	}

	br = p->br;

	bpdu.topology_change = br->topology_change;
	bpdu.topology_change_ack = p->topology_change_ack;
	bpdu.root = br->designated_root;
	bpdu.root_path_cost = br->root_path_cost;
	bpdu.bridge_id = br->bridge_id;
	bpdu.port_id = p->port_id;
	if (FUNC1(br))
		bpdu.message_age = 0;
	else {
		struct net_bridge_port *root
			= FUNC0(br, br->root_port);
		bpdu.message_age = br->max_age
			- (root->message_age_timer.expires - jiffies)
			+ MESSAGE_AGE_INCR;
	}
	bpdu.max_age = br->max_age;
	bpdu.hello_time = br->hello_time;
	bpdu.forward_delay = br->forward_delay;

	if (bpdu.message_age < br->max_age) {
		FUNC2(p, &bpdu);
		p->topology_change_ack = 0;
		p->config_pending = 0;
		FUNC3(&p->hold_timer,
			  FUNC4(jiffies + BR_HOLD_TIME));
	}
}