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
struct net_bridge_port {scalar_t__ port_no; struct net_bridge* br; } ;
struct net_bridge {scalar_t__ root_port; scalar_t__ bridge_hello_time; int /*<<< orphan*/  tcn_timer; int /*<<< orphan*/  topology_change_timer; scalar_t__ topology_change_detected; int /*<<< orphan*/  hello_timer; } ;
struct br_config_bpdu {scalar_t__ topology_change_ack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*) ; 
 scalar_t__ FUNC2 (struct net_bridge_port*) ; 
 int FUNC3 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_bridge_port*,struct br_config_bpdu*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_bridge*,struct br_config_bpdu*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_bridge_port*) ; 
 scalar_t__ FUNC8 (struct net_bridge_port*,struct br_config_bpdu*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC13(struct net_bridge_port *p, struct br_config_bpdu *bpdu)
{
	struct net_bridge *br;
	int was_root;

	br = p->br;
	was_root = FUNC3(br);

	if (FUNC8(p, bpdu)) {
		FUNC5(p, bpdu);
		FUNC1(br);
		FUNC4(br);

		if (!FUNC3(br) && was_root) {
			FUNC11(&br->hello_timer);
			if (br->topology_change_detected) {
				FUNC11(&br->topology_change_timer);
				FUNC10(br);

				FUNC12(&br->tcn_timer,
					  jiffies + br->bridge_hello_time);
			}
		}

		if (p->port_no == br->root_port) {
			FUNC6(br, bpdu);
			FUNC0(br);
			if (bpdu->topology_change_ack)
				FUNC9(br);
		}
	} else if (FUNC2(p)) {
		FUNC7(p);
	}
}