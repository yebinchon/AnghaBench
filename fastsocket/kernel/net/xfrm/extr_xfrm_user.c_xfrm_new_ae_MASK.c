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
struct TYPE_5__ {scalar_t__ state; } ;
struct xfrm_state {int /*<<< orphan*/  lock; TYPE_2__ km; } ;
struct xfrm_mark {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  family; int /*<<< orphan*/  proto; int /*<<< orphan*/  spi; int /*<<< orphan*/  daddr; } ;
struct xfrm_aevent_id {TYPE_1__ sa_id; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int nlmsg_flags; int /*<<< orphan*/  nlmsg_pid; int /*<<< orphan*/  nlmsg_seq; int /*<<< orphan*/  nlmsg_type; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  aevent; } ;
struct km_event {TYPE_3__ data; int /*<<< orphan*/  pid; int /*<<< orphan*/  seq; int /*<<< orphan*/  event; } ;

/* Variables and functions */
 int EINVAL ; 
 int ESRCH ; 
 int NLM_F_REPLACE ; 
 size_t XFRMA_LTIME_VAL ; 
 size_t XFRMA_REPLAY_VAL ; 
 int /*<<< orphan*/  XFRM_AE_CU ; 
 scalar_t__ XFRM_STATE_VALID ; 
 int /*<<< orphan*/  FUNC0 (struct xfrm_state*,struct km_event*) ; 
 struct xfrm_aevent_id* FUNC1 (struct nlmsghdr*) ; 
 struct net* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr**,struct xfrm_mark*) ; 
 struct xfrm_state* FUNC6 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct xfrm_state*,struct nlattr**) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct nlmsghdr *nlh,
		struct nlattr **attrs)
{
	struct net *net = FUNC2(skb->sk);
	struct xfrm_state *x;
	struct km_event c;
	int err = - EINVAL;
	u32 mark = 0;
	struct xfrm_mark m;
	struct xfrm_aevent_id *p = FUNC1(nlh);
	struct nlattr *rp = attrs[XFRMA_REPLAY_VAL];
	struct nlattr *lt = attrs[XFRMA_LTIME_VAL];

	if (!lt && !rp)
		return err;

	/* pedantic mode - thou shalt sayeth replaceth */
	if (!(nlh->nlmsg_flags&NLM_F_REPLACE))
		return err;

	mark = FUNC5(attrs, &m);

	x = FUNC6(net, mark, &p->sa_id.daddr, p->sa_id.spi, p->sa_id.proto, p->sa_id.family);
	if (x == NULL)
		return -ESRCH;

	if (x->km.state != XFRM_STATE_VALID)
		goto out;

	FUNC3(&x->lock);
	FUNC8(x, attrs);
	FUNC4(&x->lock);

	c.event = nlh->nlmsg_type;
	c.seq = nlh->nlmsg_seq;
	c.pid = nlh->nlmsg_pid;
	c.data.aevent = XFRM_AE_CU;
	FUNC0(x, &c);
	err = 0;
out:
	FUNC7(x);
	return err;
}