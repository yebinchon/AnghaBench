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
struct TYPE_7__ {int /*<<< orphan*/  reqid; int /*<<< orphan*/  saddr; int /*<<< orphan*/  family; } ;
struct TYPE_6__ {int /*<<< orphan*/  proto; int /*<<< orphan*/  spi; int /*<<< orphan*/  daddr; } ;
struct xfrm_state {int replay_maxdiff; int replay_maxage; int /*<<< orphan*/  mark; int /*<<< orphan*/  curlft; int /*<<< orphan*/  replay; TYPE_3__ props; TYPE_2__ id; } ;
struct TYPE_5__ {int /*<<< orphan*/  proto; int /*<<< orphan*/  family; int /*<<< orphan*/  spi; int /*<<< orphan*/  daddr; } ;
struct xfrm_aevent_id {int flags; int /*<<< orphan*/  reqid; int /*<<< orphan*/  saddr; TYPE_1__ sa_id; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct TYPE_8__ {int aevent; } ;
struct km_event {TYPE_4__ data; int /*<<< orphan*/  seq; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  XFRMA_ETIMER_THRESH ; 
 int /*<<< orphan*/  XFRMA_LTIME_VAL ; 
 int /*<<< orphan*/  XFRMA_REPLAY_THRESH ; 
 int /*<<< orphan*/  XFRMA_REPLAY_VAL ; 
 int XFRM_AE_ETHR ; 
 int XFRM_AE_RTHR ; 
 int /*<<< orphan*/  XFRM_MSG_NEWAE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlmsghdr*) ; 
 struct xfrm_aevent_id* FUNC4 (struct nlmsghdr*) ; 
 int FUNC5 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct xfrm_state *x, struct km_event *c)
{
	struct xfrm_aevent_id *id;
	struct nlmsghdr *nlh;

	nlh = FUNC6(skb, c->pid, c->seq, XFRM_MSG_NEWAE, sizeof(*id), 0);
	if (nlh == NULL)
		return -EMSGSIZE;

	id = FUNC4(nlh);
	FUNC2(&id->sa_id.daddr, &x->id.daddr,sizeof(x->id.daddr));
	id->sa_id.spi = x->id.spi;
	id->sa_id.family = x->props.family;
	id->sa_id.proto = x->id.proto;
	FUNC2(&id->saddr, &x->props.saddr,sizeof(x->props.saddr));
	id->reqid = x->props.reqid;
	id->flags = c->data.aevent;

	FUNC0(skb, XFRMA_REPLAY_VAL, sizeof(x->replay), &x->replay);
	FUNC0(skb, XFRMA_LTIME_VAL, sizeof(x->curlft), &x->curlft);

	if (id->flags & XFRM_AE_RTHR)
		FUNC1(skb, XFRMA_REPLAY_THRESH, x->replay_maxdiff);

	if (id->flags & XFRM_AE_ETHR)
		FUNC1(skb, XFRMA_ETIMER_THRESH,
			    x->replay_maxage * 10 / HZ);

	if (FUNC7(skb, &x->mark))
		goto nla_put_failure;

	return FUNC5(skb, nlh);

nla_put_failure:
	FUNC3(skb, nlh);
	return -EMSGSIZE;
}