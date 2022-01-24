#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfrm_address_t ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {int /*<<< orphan*/  proto; int /*<<< orphan*/  daddr; } ;
struct TYPE_8__ {int family; int /*<<< orphan*/  saddr; TYPE_2__ id; int /*<<< orphan*/  reqid; int /*<<< orphan*/  mode; scalar_t__ seq; } ;
struct xfrm_userspi_info {int /*<<< orphan*/  max; int /*<<< orphan*/  min; TYPE_3__ info; } ;
struct TYPE_6__ {int /*<<< orphan*/  daddr; } ;
struct xfrm_state {TYPE_1__ id; } ;
struct xfrm_mark {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  nlsk; } ;
struct net {TYPE_4__ xfrm; } ;
struct TYPE_10__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 TYPE_5__ FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 struct xfrm_userspi_info* FUNC3 (struct nlmsghdr*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct net* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct xfrm_userspi_info*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (struct xfrm_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xfrm_state* FUNC9 (struct net*,struct xfrm_mark*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 struct xfrm_state* FUNC10 (struct net*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct nlattr**,struct xfrm_mark*) ; 
 struct sk_buff* FUNC12 (struct sk_buff*,struct xfrm_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC14(struct sk_buff *skb, struct nlmsghdr *nlh,
		struct nlattr **attrs)
{
	struct net *net = FUNC5(skb->sk);
	struct xfrm_state *x;
	struct xfrm_userspi_info *p;
	struct sk_buff *resp_skb;
	xfrm_address_t *daddr;
	int family;
	int err;
	u32 mark;
	struct xfrm_mark m;

	p = FUNC3(nlh);
	err = FUNC6(p);
	if (err)
		goto out_noput;

	family = p->info.family;
	daddr = &p->info.id.daddr;

	x = NULL;

	mark = FUNC11(attrs, &m);
	if (p->info.seq) {
		x = FUNC10(net, mark, p->info.seq);
		if (x && FUNC7(&x->id.daddr, daddr, family)) {
			FUNC13(x);
			x = NULL;
		}
	}

	if (!x)
		x = FUNC9(net, &m, p->info.mode, p->info.reqid,
				  p->info.id.proto, daddr,
				  &p->info.saddr, 1,
				  family);
	err = -ENOENT;
	if (x == NULL)
		goto out_noput;

	err = FUNC8(x, p->min, p->max);
	if (err)
		goto out;

	resp_skb = FUNC12(skb, x, nlh->nlmsg_seq);
	if (FUNC0(resp_skb)) {
		err = FUNC2(resp_skb);
		goto out;
	}

	err = FUNC4(net->xfrm.nlsk, resp_skb, FUNC1(skb).pid);

out:
	FUNC13(x);
out_noput:
	return err;
}