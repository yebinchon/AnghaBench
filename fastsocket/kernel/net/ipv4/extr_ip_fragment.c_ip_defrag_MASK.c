#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {scalar_t__ dev; } ;
struct TYPE_5__ {scalar_t__ high_thresh; int /*<<< orphan*/  mem; } ;
struct TYPE_6__ {TYPE_1__ frags; } ;
struct net {TYPE_2__ ipv4; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;
struct ipq {TYPE_3__ q; } ;
struct TYPE_8__ {scalar_t__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IPSTATS_MIB_REASMFAILS ; 
 int /*<<< orphan*/  IPSTATS_MIB_REASMREQDS ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct net* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct net*) ; 
 struct ipq* FUNC4 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ipq*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct ipq*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 TYPE_4__* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct sk_buff *skb, u32 user)
{
	struct ipq *qp;
	struct net *net;

	net = skb->dev ? FUNC2(skb->dev) : FUNC2(FUNC9(skb)->dev);
	FUNC0(net, IPSTATS_MIB_REASMREQDS);

	/* Start by cleaning up the memory. */
	if (FUNC1(&net->ipv4.frags.mem) > net->ipv4.frags.high_thresh)
		FUNC3(net);

	/* Lookup (or create) queue header */
	if ((qp = FUNC4(net, FUNC6(skb), user)) != NULL) {
		int ret;

		FUNC10(&qp->q.lock);

		ret = FUNC5(qp, skb);

		FUNC11(&qp->q.lock);
		FUNC7(qp);
		return ret;
	}

	FUNC0(net, IPSTATS_MIB_REASMFAILS);
	FUNC8(skb);
	return -ENOMEM;
}