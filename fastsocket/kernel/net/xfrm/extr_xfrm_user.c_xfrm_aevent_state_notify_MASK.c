#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xfrm_state {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nlsk; } ;
struct net {TYPE_1__ xfrm; } ;
struct km_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  XFRMNLGRP_AEVENTS ; 
 scalar_t__ FUNC1 (struct sk_buff*,struct xfrm_state*,struct km_event*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct net* FUNC5 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC6(struct xfrm_state *x, struct km_event *c)
{
	struct net *net = FUNC5(x);
	struct sk_buff *skb;

	skb = FUNC3(FUNC4(), GFP_ATOMIC);
	if (skb == NULL)
		return -ENOMEM;

	if (FUNC1(skb, x, c) < 0)
		FUNC0();

	return FUNC2(net->xfrm.nlsk, skb, 0, XFRMNLGRP_AEVENTS, GFP_ATOMIC);
}