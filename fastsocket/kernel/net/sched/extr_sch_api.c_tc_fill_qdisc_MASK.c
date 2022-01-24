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
typedef  int /*<<< orphan*/  u16 ;
struct tcmsg {int /*<<< orphan*/  tcm_info; int /*<<< orphan*/  tcm_handle; int /*<<< orphan*/  tcm_parent; int /*<<< orphan*/  tcm_ifindex; scalar_t__ tcm__pad2; scalar_t__ tcm__pad1; int /*<<< orphan*/  tcm_family; } ;
struct sk_buff {int len; } ;
struct nlmsghdr {int nlmsg_len; } ;
struct gnet_dump {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  qlen; } ;
struct TYPE_5__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_4__ qstats; int /*<<< orphan*/  rate_est; int /*<<< orphan*/  bstats; TYPE_2__* ops; scalar_t__ stab; TYPE_1__ q; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  handle; } ;
struct TYPE_7__ {int /*<<< orphan*/  ifindex; } ;
struct TYPE_6__ {scalar_t__ (* dump ) (struct Qdisc*,struct sk_buff*) ;scalar_t__ (* dump_stats ) (struct Qdisc*,struct gnet_dump*) ;int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tcmsg* FUNC1 (struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCA_KIND ; 
 int /*<<< orphan*/  TCA_STATS ; 
 int /*<<< orphan*/  TCA_STATS2 ; 
 int /*<<< orphan*/  TCA_XSTATS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct gnet_dump*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct gnet_dump*,TYPE_4__*) ; 
 scalar_t__ FUNC6 (struct gnet_dump*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct gnet_dump*) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gnet_dump*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,unsigned char*) ; 
 TYPE_3__* FUNC10 (struct Qdisc*) ; 
 scalar_t__ FUNC11 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct Qdisc*) ; 
 unsigned char* FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (struct Qdisc*,struct sk_buff*) ; 
 scalar_t__ FUNC15 (struct Qdisc*,struct gnet_dump*) ; 

__attribute__((used)) static int FUNC16(struct sk_buff *skb, struct Qdisc *q, u32 clid,
			 u32 pid, u32 seq, u16 flags, int event)
{
	struct tcmsg *tcm;
	struct nlmsghdr  *nlh;
	unsigned char *b = FUNC13(skb);
	struct gnet_dump d;

	nlh = FUNC2(skb, pid, seq, event, sizeof(*tcm), flags);
	tcm = FUNC1(nlh);
	tcm->tcm_family = AF_UNSPEC;
	tcm->tcm__pad1 = 0;
	tcm->tcm__pad2 = 0;
	tcm->tcm_ifindex = FUNC10(q)->ifindex;
	tcm->tcm_parent = clid;
	tcm->tcm_handle = q->handle;
	tcm->tcm_info = FUNC3(&q->refcnt);
	FUNC0(skb, TCA_KIND, q->ops->id);
	if (q->ops->dump && q->ops->dump(q, skb) < 0)
		goto nla_put_failure;
	q->qstats.qlen = q->q.qlen;

	if (q->stab && FUNC11(skb, q->stab) < 0)
		goto nla_put_failure;

	if (FUNC8(skb, TCA_STATS2, TCA_STATS, TCA_XSTATS,
					 FUNC12(q), &d) < 0)
		goto nla_put_failure;

	if (q->ops->dump_stats && q->ops->dump_stats(q, &d) < 0)
		goto nla_put_failure;

	if (FUNC4(&d, &q->bstats) < 0 ||
	    FUNC6(&d, &q->rate_est) < 0 ||
	    FUNC5(&d, &q->qstats) < 0)
		goto nla_put_failure;

	if (FUNC7(&d) < 0)
		goto nla_put_failure;

	nlh->nlmsg_len = FUNC13(skb) - b;
	return skb->len;

nlmsg_failure:
nla_put_failure:
	FUNC9(skb, b);
	return -1;
}