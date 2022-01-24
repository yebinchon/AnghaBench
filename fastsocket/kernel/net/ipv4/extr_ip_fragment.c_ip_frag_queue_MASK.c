#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; scalar_t__ ip_summed; int /*<<< orphan*/  truesize; int /*<<< orphan*/  tstamp; struct net_device* dev; struct sk_buff* next; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct TYPE_7__ {int last_in; int len; int meat; int max_size; TYPE_4__* net; int /*<<< orphan*/  lru_list; int /*<<< orphan*/  stamp; struct sk_buff* fragments; } ;
struct ipq {TYPE_1__ q; int /*<<< orphan*/  iif; } ;
struct TYPE_12__ {int offset; } ;
struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {int /*<<< orphan*/  lru_list; int /*<<< orphan*/  mem; } ;
struct TYPE_9__ {int /*<<< orphan*/  lock; } ;
struct TYPE_8__ {int frag_off; } ;

/* Variables and functions */
 void* CHECKSUM_NONE ; 
 scalar_t__ CHECKSUM_UNNECESSARY ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 TYPE_6__* FUNC0 (struct sk_buff*) ; 
 int INET_FRAG_COMPLETE ; 
 int INET_FRAG_FIRST_IN ; 
 int INET_FRAG_LAST_IN ; 
 TYPE_5__* FUNC1 (struct sk_buff*) ; 
 int IPSKB_FRAG_COMPLETE ; 
 int /*<<< orphan*/  IP_DF ; 
 int IP_MF ; 
 int IP_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_3__ ip4_frags ; 
 int FUNC5 (struct ipq*,struct sk_buff*,struct net_device*) ; 
 int FUNC6 (struct ipq*) ; 
 int FUNC7 (struct ipq*) ; 
 TYPE_2__* FUNC8 (struct sk_buff*) ; 
 int FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct ipq*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int) ; 
 int /*<<< orphan*/ * FUNC14 (struct sk_buff*,int) ; 
 int FUNC15 (struct sk_buff*,int) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct ipq *qp, struct sk_buff *skb)
{
	struct sk_buff *prev, *next;
	struct net_device *dev;
	int flags, offset;
	int ihl, end;
	int err = -ENOENT;

	if (qp->q.last_in & INET_FRAG_COMPLETE)
		goto err;

	if (!(FUNC1(skb)->flags & IPSKB_FRAG_COMPLETE) &&
	    FUNC16(FUNC7(qp)) &&
	    FUNC16(err = FUNC6(qp))) {
		FUNC10(qp);
		goto err;
	}

	offset = FUNC13(FUNC8(skb)->frag_off);
	flags = offset & ~IP_OFFSET;
	offset &= IP_OFFSET;
	offset <<= 3;		/* offset is in 8-byte chunks */
	ihl = FUNC9(skb);

	/* Determine the position of this fragment. */
	end = offset + skb->len - ihl;
	err = -EINVAL;

	/* Is this the final fragment? */
	if ((flags & IP_MF) == 0) {
		/* If we already have some bits beyond end
		 * or have different end, the segment is corrrupted.
		 */
		if (end < qp->q.len ||
		    ((qp->q.last_in & INET_FRAG_LAST_IN) && end != qp->q.len))
			goto err;
		qp->q.last_in |= INET_FRAG_LAST_IN;
		qp->q.len = end;
	} else {
		if (end&7) {
			end &= ~7;
			if (skb->ip_summed != CHECKSUM_UNNECESSARY)
				skb->ip_summed = CHECKSUM_NONE;
		}
		if (end > qp->q.len) {
			/* Some bits beyond end -> corruption. */
			if (qp->q.last_in & INET_FRAG_LAST_IN)
				goto err;
			qp->q.len = end;
		}
	}
	if (end == offset)
		goto err;

	err = -ENOMEM;
	if (FUNC14(skb, ihl) == NULL)
		goto err;

	err = FUNC15(skb, end - offset);
	if (err)
		goto err;

	/* Find out which fragments are in front and at the back of us
	 * in the chain of fragments so far.  We must know where to put
	 * this fragment, right?
	 */
	prev = NULL;
	for (next = qp->q.fragments; next != NULL; next = next->next) {
		if (FUNC0(next)->offset >= offset)
			break;	/* bingo! */
		prev = next;
	}

	/* We found where to put this one.  Check for overlap with
	 * preceding fragment, and, if needed, align things so that
	 * any overlaps are eliminated.
	 */
	if (prev) {
		int i = (FUNC0(prev)->offset + prev->len) - offset;

		if (i > 0) {
			offset += i;
			err = -EINVAL;
			if (end <= offset)
				goto err;
			err = -ENOMEM;
			if (!FUNC14(skb, i))
				goto err;
			if (skb->ip_summed != CHECKSUM_UNNECESSARY)
				skb->ip_summed = CHECKSUM_NONE;
		}
	}

	err = -ENOMEM;

	while (next && FUNC0(next)->offset < end) {
		int i = end - FUNC0(next)->offset; /* overlap is 'i' bytes */

		if (i < next->len) {
			/* Eat head of the next overlapped fragment
			 * and leave the loop. The next ones cannot overlap.
			 */
			if (!FUNC14(next, i))
				goto err;
			FUNC0(next)->offset += i;
			qp->q.meat -= i;
			if (next->ip_summed != CHECKSUM_UNNECESSARY)
				next->ip_summed = CHECKSUM_NONE;
			break;
		} else {
			struct sk_buff *free_it = next;

			/* Old fragment is completely overridden with
			 * new one drop it.
			 */
			next = next->next;

			if (prev)
				prev->next = next;
			else
				qp->q.fragments = next;

			qp->q.meat -= free_it->len;
			FUNC3(qp->q.net, free_it, NULL);
		}
	}

	FUNC0(skb)->offset = offset;

	/* Insert this fragment in the chain of fragments. */
	skb->next = next;
	if (prev)
		prev->next = skb;
	else
		qp->q.fragments = skb;

	dev = skb->dev;
	if (dev) {
		qp->iif = dev->ifindex;
		skb->dev = NULL;
	}
	qp->q.stamp = skb->tstamp;
	qp->q.meat += skb->len;
	FUNC2(skb->truesize, &qp->q.net->mem);
	if (offset == 0)
		qp->q.last_in |= INET_FRAG_FIRST_IN;

	if (FUNC8(skb)->frag_off & FUNC4(IP_DF) &&
	    skb->len + ihl > qp->q.max_size)
		qp->q.max_size = skb->len + ihl;

	if (qp->q.last_in == (INET_FRAG_FIRST_IN | INET_FRAG_LAST_IN) &&
	    qp->q.meat == qp->q.len)
		return FUNC5(qp, prev, dev);

	FUNC17(&ip4_frags.lock);
	FUNC12(&qp->q.lru_list, &qp->q.net->lru_list);
	FUNC18(&ip4_frags.lock);
	return -EINPROGRESS;

err:
	FUNC11(skb);
	return err;
}