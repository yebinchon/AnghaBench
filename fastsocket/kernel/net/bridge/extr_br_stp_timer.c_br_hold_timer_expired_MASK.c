#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_bridge_port {TYPE_3__* br; scalar_t__ config_pending; TYPE_2__* dev; int /*<<< orphan*/  port_no; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; TYPE_1__* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(unsigned long arg)
{
	struct net_bridge_port *p = (struct net_bridge_port *) arg;

	FUNC1("%s: %d(%s) hold timer expired\n",
		 p->br->dev->name,  p->port_no, p->dev->name);

	FUNC2(&p->br->lock);
	if (p->config_pending)
		FUNC0(p);
	FUNC3(&p->br->lock);
}