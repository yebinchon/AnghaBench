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
struct sk_buff {TYPE_1__* dev; } ;
struct net_bridge_port {int /*<<< orphan*/  br; } ;
struct TYPE_4__ {int /*<<< orphan*/  h_source; } ;
struct TYPE_3__ {int /*<<< orphan*/  br_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_bridge_port*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 struct net_bridge_port* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb)
{
	struct net_bridge_port *p = FUNC2(skb->dev->br_port);

	if (p)
		FUNC0(p->br, p, FUNC1(skb)->h_source);
	return 0;	 /* process further */
}