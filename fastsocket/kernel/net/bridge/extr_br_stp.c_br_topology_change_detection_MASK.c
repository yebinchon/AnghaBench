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
struct net_bridge {scalar_t__ stp_enabled; int topology_change; int topology_change_detected; scalar_t__ bridge_hello_time; int /*<<< orphan*/  tcn_timer; scalar_t__ bridge_max_age; scalar_t__ bridge_forward_delay; int /*<<< orphan*/  topology_change_timer; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ BR_KERNEL_STP ; 
 int FUNC0 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 

void FUNC4(struct net_bridge *br)
{
	int isroot = FUNC0(br);

	if (br->stp_enabled != BR_KERNEL_STP)
		return;

	FUNC3("%s: topology change detected, %s\n", br->dev->name,
		isroot ? "propagating" : "sending tcn bpdu");

	if (isroot) {
		br->topology_change = 1;
		FUNC2(&br->topology_change_timer, jiffies
			  + br->bridge_forward_delay + br->bridge_max_age);
	} else if (!br->topology_change_detected) {
		FUNC1(br);
		FUNC2(&br->tcn_timer, jiffies + br->bridge_hello_time);
	}

	br->topology_change_detected = 1;
}