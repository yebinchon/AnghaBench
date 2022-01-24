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
 struct net_bridge_port* FUNC0 (int) ; 
 int FUNC1 (struct net_bridge_port*,struct sk_buff*,void (*) (struct net_bridge_port const*,struct sk_buff*)) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge_port*,struct sk_buff*) ; 

__attribute__((used)) static struct net_bridge_port *FUNC3(
	struct net_bridge_port *prev, struct net_bridge_port *p,
	struct sk_buff *skb,
	void (*__packet_hook)(const struct net_bridge_port *p,
			      struct sk_buff *skb))
{
	int err;

	if (!FUNC2(p, skb))
		return prev;

	if (!prev)
		goto out;

	err = FUNC1(prev, skb, __packet_hook);
	if (err)
		return FUNC0(err);

out:
	return p;
}