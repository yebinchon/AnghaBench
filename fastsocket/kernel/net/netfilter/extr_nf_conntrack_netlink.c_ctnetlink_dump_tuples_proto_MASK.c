#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  protonum; } ;
struct nf_conntrack_tuple {TYPE_1__ dst; } ;
struct nf_conntrack_l4proto {int (* tuple_to_nlattr ) (struct sk_buff*,struct nf_conntrack_tuple const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CTA_PROTO_NUM ; 
 int CTA_TUPLE_PROTO ; 
 int NLA_F_NESTED ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int (*) (struct sk_buff*,struct nf_conntrack_tuple const*)) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int) ; 
 int FUNC4 (struct sk_buff*,struct nf_conntrack_tuple const*) ; 

__attribute__((used)) static inline int
FUNC5(struct sk_buff *skb,
			    const struct nf_conntrack_tuple *tuple,
			    struct nf_conntrack_l4proto *l4proto)
{
	int ret = 0;
	struct nlattr *nest_parms;

	nest_parms = FUNC3(skb, CTA_TUPLE_PROTO | NLA_F_NESTED);
	if (!nest_parms)
		goto nla_put_failure;
	FUNC0(skb, CTA_PROTO_NUM, tuple->dst.protonum);

	if (FUNC1(l4proto->tuple_to_nlattr))
		ret = l4proto->tuple_to_nlattr(skb, tuple);

	FUNC2(skb, nest_parms);

	return ret;

nla_put_failure:
	return -1;
}