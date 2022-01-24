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
struct sk_buff {int dummy; } ;
struct net_bridge_port_group {scalar_t__ queries_sent; int /*<<< orphan*/  query_timer; int /*<<< orphan*/  addr; struct net_bridge_port* port; } ;
struct net_bridge_port {struct net_bridge* br; } ;
struct net_bridge {scalar_t__ multicast_last_member_count; scalar_t__ multicast_last_member_interval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_bridge_port*,struct sk_buff*) ; 
 struct sk_buff* FUNC1 (struct net_bridge*,int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct net_bridge_port_group *pg)
{
	struct net_bridge_port *port = pg->port;
	struct net_bridge *br = port->br;
	struct sk_buff *skb;

	skb = FUNC1(br, &pg->addr);
	if (!skb)
		goto timer;

	FUNC0(port, skb);

timer:
	if (++pg->queries_sent < br->multicast_last_member_count)
		FUNC2(&pg->query_timer,
			  jiffies + br->multicast_last_member_interval);
}