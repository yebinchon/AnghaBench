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
struct net_bridge_port {int /*<<< orphan*/  dev; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  RTNLGRP_LINK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct sk_buff*,struct net_bridge_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct net* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net*,int /*<<< orphan*/ ,int) ; 

void FUNC9(int event, struct net_bridge_port *port)
{
	struct net *net = FUNC3(port->dev);
	struct sk_buff *skb;
	int err = -ENOBUFS;

	FUNC6("bridge notify event=%d\n", event);
	skb = FUNC5(FUNC2(), GFP_ATOMIC);
	if (skb == NULL)
		goto errout;

	err = FUNC1(skb, port, 0, 0, event, 0);
	if (err < 0) {
		/* -EMSGSIZE implies BUG in br_nlmsg_size() */
		FUNC0(err == -EMSGSIZE);
		FUNC4(skb);
		goto errout;
	}
	FUNC7(skb, net, 0, RTNLGRP_LINK, NULL, GFP_ATOMIC);
	return;
errout:
	if (err < 0)
		FUNC8(net, RTNLGRP_LINK, err);
}