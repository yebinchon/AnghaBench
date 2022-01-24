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
typedef  int /*<<< orphan*/  u_int8_t ;
struct sk_buff {struct sk_buff* next; void* protocol; } ;
struct net_device {int dummy; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
#define  NFPROTO_IPV4 129 
#define  NFPROTO_IPV6 128 
 int FUNC1 (struct sk_buff*,struct list_head*,int /*<<< orphan*/ ,unsigned int,struct net_device*,struct net_device*,int (*) (struct sk_buff*),unsigned int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct sk_buff *skb,
	     struct list_head *elem,
	     u_int8_t pf, unsigned int hook,
	     struct net_device *indev,
	     struct net_device *outdev,
	     int (*okfn)(struct sk_buff *),
	     unsigned int queuenum)
{
	struct sk_buff *segs;
	int err;
	unsigned int queued;

	if (!FUNC5(skb))
		return FUNC1(skb, elem, pf, hook, indev, outdev, okfn,
				  queuenum);

	switch (pf) {
	case NFPROTO_IPV4:
		skb->protocol = FUNC2(ETH_P_IP);
		break;
	case NFPROTO_IPV6:
		skb->protocol = FUNC2(ETH_P_IPV6);
		break;
	}

	segs = FUNC4(skb, 0);
	/* Does not use PTR_ERR to limit the number of error codes that can be
	 * returned by nf_queue.  For instance, callers rely on -ECANCELED to mean
	 * 'ignore this hook'.
	 */
	if (FUNC0(segs))
		return -EINVAL;

	queued = 0;
	err = 0;
	do {
		struct sk_buff *nskb = segs->next;

		segs->next = NULL;
		if (err == 0)
			err = FUNC1(segs, elem, pf, hook, indev,
					   outdev, okfn, queuenum);
		if (err == 0)
			queued++;
		else
			FUNC3(segs);
		segs = nskb;
	} while (segs);

	/* also free orig skb if only some segments were queued */
	if (FUNC6(err && queued))
		err = 0;
	if (err == 0)
		FUNC3(skb);
	return err;
}