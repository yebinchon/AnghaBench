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
struct net_bridge_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_bridge_port const*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct net_bridge_port const*,struct sk_buff*) ; 

void FUNC3(const struct net_bridge_port *to, struct sk_buff *skb)
{
	if (FUNC2(to, skb)) {
		FUNC0(to, skb);
		return;
	}

	FUNC1(skb);
}