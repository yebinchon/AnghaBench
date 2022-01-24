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
typedef  int /*<<< orphan*/  xfrm_address_t ;
typedef  int /*<<< orphan*/  u8 ;
struct xfrm_selector {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nlsk; } ;
struct net {TYPE_1__ xfrm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  XFRMNLGRP_REPORT ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,struct xfrm_selector*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct net *net, u8 proto,
			    struct xfrm_selector *sel, xfrm_address_t *addr)
{
	struct sk_buff *skb;

	skb = FUNC3(FUNC4(), GFP_ATOMIC);
	if (skb == NULL)
		return -ENOMEM;

	if (FUNC1(skb, proto, sel, addr) < 0)
		FUNC0();

	return FUNC2(net->xfrm.nlsk, skb, 0, XFRMNLGRP_REPORT, GFP_ATOMIC);
}