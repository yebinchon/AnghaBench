#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct inet_frags {int dummy; } ;
struct TYPE_4__ {int last_in; int /*<<< orphan*/  lock; TYPE_3__* fragments; } ;
struct frag_queue {TYPE_1__ q; int /*<<< orphan*/  iif; } ;
struct TYPE_5__ {struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMPV6_EXC_FRAGTIME ; 
 int /*<<< orphan*/  ICMPV6_TIME_EXCEED ; 
 int INET_FRAG_COMPLETE ; 
 int INET_FRAG_FIRST_IN ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPSTATS_MIB_REASMFAILS ; 
 int /*<<< orphan*/  IPSTATS_MIB_REASMTIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct inet_frags*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct inet_frags*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct net *net, struct frag_queue *fq,
			   struct inet_frags *frags)
{
	struct net_device *dev = NULL;

	FUNC9(&fq->q.lock);

	if (fq->q.last_in & INET_FRAG_COMPLETE)
		goto out;

	FUNC5(&fq->q, frags);

	dev = FUNC2(net, fq->iif);
	if (!dev)
		goto out;

	FUNC7();
	FUNC0(net, FUNC1(dev), IPSTATS_MIB_REASMTIMEOUT);
	FUNC0(net, FUNC1(dev), IPSTATS_MIB_REASMFAILS);
	FUNC8();

	/* Don't send error if the first segment did not arrive. */
	if (!(fq->q.last_in & INET_FRAG_FIRST_IN) || !fq->q.fragments)
		goto out;

	/*
	   But use as source device on which LAST ARRIVED
	   segment was received. And do not use fq->dev
	   pointer directly, device might already disappeared.
	 */
	fq->q.fragments->dev = dev;
	FUNC4(fq->q.fragments, ICMPV6_TIME_EXCEED, ICMPV6_EXC_FRAGTIME, 0, dev);
out:
	if (dev)
		FUNC3(dev);
	FUNC10(&fq->q.lock);
	FUNC6(&fq->q, frags);
}