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
struct net_device {struct net_bridge_port* br_port; } ;
struct net_bridge_port {struct net_bridge* br; } ;
struct net_bridge {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct net_bridge *br, struct net_device *dev)
{
	struct net_bridge_port *p = dev->br_port;

	if (!p || p->br != br)
		return -EINVAL;

	FUNC2(p);

	FUNC3(&br->lock);
	FUNC1(br);
	FUNC4(&br->lock);

	FUNC0(br);

	return 0;
}