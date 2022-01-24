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
struct net_bridge_port {scalar_t__ state; int /*<<< orphan*/  forward_delay_timer; TYPE_2__* dev; int /*<<< orphan*/  port_no; struct net_bridge* br; } ;
struct net_bridge {int /*<<< orphan*/  lock; scalar_t__ forward_delay; TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ BR_STATE_FORWARDING ; 
 scalar_t__ BR_STATE_LEARNING ; 
 scalar_t__ BR_STATE_LISTENING ; 
 scalar_t__ FUNC0 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(unsigned long arg)
{
	struct net_bridge_port *p = (struct net_bridge_port *) arg;
	struct net_bridge *br = p->br;

	FUNC4("%s: %d(%s) forward delay timer\n",
		 br->dev->name, p->port_no, p->dev->name);
	FUNC5(&br->lock);
	if (p->state == BR_STATE_LISTENING) {
		p->state = BR_STATE_LEARNING;
		FUNC3(&p->forward_delay_timer,
			  jiffies + br->forward_delay);
	} else if (p->state == BR_STATE_LEARNING) {
		p->state = BR_STATE_FORWARDING;
		if (FUNC0(br))
			FUNC2(br);
	}
	FUNC1(p);
	FUNC6(&br->lock);
}