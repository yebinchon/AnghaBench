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
struct xfrm6_tunnel {int /*<<< orphan*/  (* handler ) (struct sk_buff*) ;struct xfrm6_tunnel* next; } ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct ipv6hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMPV6_DEST_UNREACH ; 
 int /*<<< orphan*/  ICMPV6_PORT_UNREACH ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct xfrm6_tunnel* tunnel6_handlers ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb)
{
	struct xfrm6_tunnel *handler;

	if (!FUNC2(skb, sizeof(struct ipv6hdr)))
		goto drop;

	for (handler = tunnel6_handlers; handler; handler = handler->next)
		if (!handler->handler(skb))
			return 0;

	FUNC0(skb, ICMPV6_DEST_UNREACH, ICMPV6_PORT_UNREACH, 0, skb->dev);

drop:
	FUNC1(skb);
	return 0;
}