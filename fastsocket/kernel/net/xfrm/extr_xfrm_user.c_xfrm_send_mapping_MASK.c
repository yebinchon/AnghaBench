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
typedef  int /*<<< orphan*/  xfrm_address_t ;
struct TYPE_3__ {scalar_t__ proto; } ;
struct xfrm_state {int /*<<< orphan*/  encap; TYPE_1__ id; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  nlsk; } ;
struct net {TYPE_2__ xfrm; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ IPPROTO_ESP ; 
 int /*<<< orphan*/  XFRMNLGRP_MAPPING ; 
 scalar_t__ FUNC1 (struct sk_buff*,struct xfrm_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct net* FUNC5 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC6(struct xfrm_state *x, xfrm_address_t *ipaddr,
			     __be16 sport)
{
	struct net *net = FUNC5(x);
	struct sk_buff *skb;

	if (x->id.proto != IPPROTO_ESP)
		return -EINVAL;

	if (!x->encap)
		return -EINVAL;

	skb = FUNC3(FUNC4(), GFP_ATOMIC);
	if (skb == NULL)
		return -ENOMEM;

	if (FUNC1(skb, x, ipaddr, sport) < 0)
		FUNC0();

	return FUNC2(net->xfrm.nlsk, skb, 0, XFRMNLGRP_MAPPING, GFP_ATOMIC);
}