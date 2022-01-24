#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; } ;
struct TYPE_6__ {int /*<<< orphan*/  disable_ipv6; } ;
struct inet6_dev {TYPE_1__ cnf; } ;
struct TYPE_8__ {scalar_t__ frag_max_size; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTDISCARDS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 struct inet6_dev* FUNC4 (TYPE_2__*) ; 
 int FUNC5 (struct sk_buff*,int (*) (struct sk_buff*)) ; 
 int FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 TYPE_2__* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

int FUNC12(struct sk_buff *skb)
{
	struct inet6_dev *idev = FUNC4(FUNC9(skb));
	if (FUNC11(idev->cnf.disable_ipv6)) {
		FUNC1(FUNC2(FUNC9(skb)->dev), idev,
			      IPSTATS_MIB_OUTDISCARDS);
		FUNC8(skb);
		return 0;
	}

	if ((skb->len > FUNC7(skb) && !FUNC10(skb)) ||
	    FUNC3(FUNC9(skb)) ||
	    (FUNC0(skb)->frag_max_size && skb->len > FUNC0(skb)->frag_max_size))
		return FUNC5(skb, ip6_output2);
	else
		return FUNC6(skb);
}