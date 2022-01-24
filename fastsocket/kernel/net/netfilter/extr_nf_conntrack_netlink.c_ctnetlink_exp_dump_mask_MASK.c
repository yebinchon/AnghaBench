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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  all; } ;
struct TYPE_8__ {int /*<<< orphan*/  u3; TYPE_2__ u; } ;
struct nf_conntrack_tuple_mask {TYPE_3__ src; } ;
struct TYPE_10__ {int /*<<< orphan*/  protonum; } ;
struct TYPE_6__ {int /*<<< orphan*/  all; } ;
struct TYPE_9__ {int /*<<< orphan*/  l3num; int /*<<< orphan*/  u3; TYPE_1__ u; } ;
struct nf_conntrack_tuple {TYPE_5__ dst; TYPE_4__ src; } ;
struct nf_conntrack_l4proto {int dummy; } ;
struct nf_conntrack_l3proto {int dummy; } ;
typedef  int /*<<< orphan*/  m ;

/* Variables and functions */
 int CTA_EXPECT_MASK ; 
 int NLA_F_NESTED ; 
 struct nf_conntrack_l3proto* FUNC0 (int /*<<< orphan*/ ) ; 
 struct nf_conntrack_l4proto* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,struct nf_conntrack_tuple*,struct nf_conntrack_l3proto*) ; 
 int FUNC3 (struct sk_buff*,struct nf_conntrack_tuple*,struct nf_conntrack_l4proto*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nf_conntrack_tuple*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC7 (struct sk_buff*,int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static inline int
FUNC9(struct sk_buff *skb,
			const struct nf_conntrack_tuple *tuple,
			const struct nf_conntrack_tuple_mask *mask)
{
	int ret;
	struct nf_conntrack_l3proto *l3proto;
	struct nf_conntrack_l4proto *l4proto;
	struct nf_conntrack_tuple m;
	struct nlattr *nest_parms;

	FUNC5(&m, 0xFF, sizeof(m));
	m.src.u.all = mask->src.u.all;
	FUNC4(&m.src.u3, &mask->src.u3, sizeof(m.src.u3));

	nest_parms = FUNC7(skb, CTA_EXPECT_MASK | NLA_F_NESTED);
	if (!nest_parms)
		goto nla_put_failure;

	l3proto = FUNC0(tuple->src.l3num);
	ret = FUNC2(skb, &m, l3proto);

	if (FUNC8(ret < 0))
		goto nla_put_failure;

	l4proto = FUNC1(tuple->src.l3num, tuple->dst.protonum);
	ret = FUNC3(skb, &m, l4proto);
	if (FUNC8(ret < 0))
		goto nla_put_failure;

	FUNC6(skb, nest_parms);

	return 0;

nla_put_failure:
	return -1;
}