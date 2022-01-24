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
struct xfrm_tunnel {int /*<<< orphan*/  (* handler ) (struct sk_buff*) ;struct xfrm_tunnel* next; } ;
struct sk_buff {int dummy; } ;
struct iphdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMP_DEST_UNREACH ; 
 int /*<<< orphan*/  ICMP_PORT_UNREACH ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct xfrm_tunnel* tunnel4_handlers ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb)
{
	struct xfrm_tunnel *handler;

	if (!FUNC2(skb, sizeof(struct iphdr)))
		goto drop;

	for (handler = tunnel4_handlers; handler; handler = handler->next)
		if (!handler->handler(skb))
			return 0;

	FUNC0(skb, ICMP_DEST_UNREACH, ICMP_PORT_UNREACH, 0);

drop:
	FUNC1(skb);
	return 0;
}