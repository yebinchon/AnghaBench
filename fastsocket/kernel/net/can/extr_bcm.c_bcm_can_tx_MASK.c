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
struct sk_buff {int /*<<< orphan*/  sk; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct can_frame {int dummy; } ;
struct bcm_op {size_t currframe; size_t nframes; int /*<<< orphan*/  frames_abs; int /*<<< orphan*/  sk; int /*<<< orphan*/  ifindex; struct can_frame* frames; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFSIZ ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct can_frame*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct bcm_op *op)
{
	struct sk_buff *skb;
	struct net_device *dev;
	struct can_frame *cf = &op->frames[op->currframe];

	/* no target device? => exit */
	if (!op->ifindex)
		return;

	dev = FUNC2(&init_net, op->ifindex);
	if (!dev) {
		/* RFC: should this bcm_op remove itself here? */
		return;
	}

	skb = FUNC0(CFSIZ, FUNC4());
	if (!skb)
		goto out;

	FUNC5(FUNC6(skb, CFSIZ), cf, CFSIZ);

	/* send with loopback */
	skb->dev = dev;
	skb->sk = op->sk;
	FUNC1(skb, 1);

	/* update statistics */
	op->currframe++;
	op->frames_abs++;

	/* reached last frame? */
	if (op->currframe >= op->nframes)
		op->currframe = 0;
 out:
	FUNC3(dev);
}