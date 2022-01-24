#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct xfrm_usersa_id {int /*<<< orphan*/  family; int /*<<< orphan*/  proto; int /*<<< orphan*/  spi; int /*<<< orphan*/  daddr; } ;
struct xfrm_state {int /*<<< orphan*/  lock; } ;
struct xfrm_mark {int dummy; } ;
struct xfrm_aevent_id {int /*<<< orphan*/  flags; struct xfrm_usersa_id sa_id; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_pid; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  nlsk; } ;
struct net {TYPE_2__ xfrm; } ;
struct TYPE_4__ {int /*<<< orphan*/  aevent; } ;
struct km_event {int /*<<< orphan*/  pid; int /*<<< orphan*/  seq; TYPE_1__ data; } ;
struct TYPE_6__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOMEM ; 
 int ESRCH ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 TYPE_3__ FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct xfrm_state*,struct km_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct xfrm_aevent_id* FUNC4 (struct nlmsghdr*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct net* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct nlattr**,struct xfrm_mark*) ; 
 struct xfrm_state* FUNC12 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC14(struct sk_buff *skb, struct nlmsghdr *nlh,
		struct nlattr **attrs)
{
	struct net *net = FUNC7(skb->sk);
	struct xfrm_state *x;
	struct sk_buff *r_skb;
	int err;
	struct km_event c;
	u32 mark;
	struct xfrm_mark m;
	struct xfrm_aevent_id *p = FUNC4(nlh);
	struct xfrm_usersa_id *id = &p->sa_id;

	r_skb = FUNC5(FUNC10(), GFP_ATOMIC);
	if (r_skb == NULL)
		return -ENOMEM;

	mark = FUNC11(attrs, &m);

	x = FUNC12(net, mark, &id->daddr, id->spi, id->proto, id->family);
	if (x == NULL) {
		FUNC3(r_skb);
		return -ESRCH;
	}

	/*
	 * XXX: is this lock really needed - none of the other
	 * gets lock (the concern is things getting updated
	 * while we are still reading) - jhs
	*/
	FUNC8(&x->lock);
	c.data.aevent = p->flags;
	c.seq = nlh->nlmsg_seq;
	c.pid = nlh->nlmsg_pid;

	if (FUNC2(r_skb, x, &c) < 0)
		FUNC0();
	err = FUNC6(net->xfrm.nlsk, r_skb, FUNC1(skb).pid);
	FUNC9(&x->lock);
	FUNC13(x);
	return err;
}