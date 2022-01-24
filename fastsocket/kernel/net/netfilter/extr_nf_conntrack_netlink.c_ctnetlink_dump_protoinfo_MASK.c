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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nf_conntrack_l4proto {int (* to_nlattr ) (struct sk_buff*,struct nlattr*,struct nf_conn*) ;} ;
struct nf_conn {int dummy; } ;

/* Variables and functions */
 int CTA_PROTOINFO ; 
 int NLA_F_NESTED ; 
 struct nf_conntrack_l4proto* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int) ; 
 int FUNC5 (struct sk_buff*,struct nlattr*,struct nf_conn*) ; 

__attribute__((used)) static inline int
FUNC6(struct sk_buff *skb, struct nf_conn *ct)
{
	struct nf_conntrack_l4proto *l4proto;
	struct nlattr *nest_proto;
	int ret;

	l4proto = FUNC0(FUNC1(ct), FUNC2(ct));
	if (!l4proto->to_nlattr)
		return 0;

	nest_proto = FUNC4(skb, CTA_PROTOINFO | NLA_F_NESTED);
	if (!nest_proto)
		goto nla_put_failure;

	ret = l4proto->to_nlattr(skb, nest_proto, ct);

	FUNC3(skb, nest_proto);

	return ret;

nla_put_failure:
	return -1;
}