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
struct nf_conn {int status; } ;

/* Variables and functions */
 int CTA_TUPLE_MASTER ; 
 int IPS_EXPECTED ; 
 int NLA_F_NESTED ; 
 scalar_t__ FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conn const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static inline int
FUNC4(struct sk_buff *skb, const struct nf_conn *ct)
{
	struct nlattr *nest_parms;

	if (!(ct->status & IPS_EXPECTED))
		return 0;

	nest_parms = FUNC3(skb, CTA_TUPLE_MASTER | NLA_F_NESTED);
	if (!nest_parms)
		goto nla_put_failure;
	if (FUNC0(skb, FUNC1(ct)) < 0)
		goto nla_put_failure;
	FUNC2(skb, nest_parms);

	return 0;

nla_put_failure:
	return -1;
}