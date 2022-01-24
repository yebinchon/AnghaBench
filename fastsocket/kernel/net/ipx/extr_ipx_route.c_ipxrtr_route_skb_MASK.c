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
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  node; } ;
struct ipxhdr {TYPE_1__ ipx_dest; } ;
struct ipx_route {int /*<<< orphan*/  ir_intrfc; int /*<<< orphan*/  ir_router_node; scalar_t__ ir_routed; } ;
struct TYPE_4__ {int /*<<< orphan*/  ipx_dest_net; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 struct ipxhdr* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct ipx_route* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ipx_route*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

int FUNC8(struct sk_buff *skb)
{
	struct ipxhdr *ipx = FUNC1(skb);
	struct ipx_route *r = FUNC5(FUNC0(skb)->ipx_dest_net);

	if (!r) {	/* no known route */
		FUNC7(skb);
		return 0;
	}

	FUNC2(r->ir_intrfc);
	FUNC4(r->ir_intrfc, skb, r->ir_routed ?
			r->ir_router_node : ipx->ipx_dest.node);
	FUNC3(r->ir_intrfc);
	FUNC6(r);

	return 0;
}