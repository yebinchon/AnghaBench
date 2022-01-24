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
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct net_bridge_port {int /*<<< orphan*/  dev; } ;
struct net_bridge {int dummy; } ;
struct ethhdr {int dummy; } ;
struct br_ip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NF_BR_LOCAL_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PF_BRIDGE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC2 (struct net_bridge*,struct br_ip*) ; 
 int /*<<< orphan*/  dev_queue_xmit ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct net_bridge *br,
				      struct net_bridge_port *port,
				      struct br_ip *ip)
{
	struct sk_buff *skb;

	skb = FUNC2(br, ip);
	if (!skb)
		return;

	if (port) {
		FUNC1(skb, sizeof(struct ethhdr));
		skb->dev = port->dev;
		FUNC0(PF_BRIDGE, NF_BR_LOCAL_OUT, skb, NULL, skb->dev,
			dev_queue_xmit);
	} else
		FUNC3(skb);
}