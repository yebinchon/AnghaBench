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
struct nf_conntrack_tuple {int dummy; } ;
typedef  enum ctattr_expect { ____Placeholder_ctattr_expect } ctattr_expect ;

/* Variables and functions */
 int NLA_F_NESTED ; 
 scalar_t__ FUNC0 (struct sk_buff*,struct nf_conntrack_tuple const*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int) ; 

__attribute__((used)) static inline int
FUNC3(struct sk_buff *skb,
			 const struct nf_conntrack_tuple *tuple,
			 enum ctattr_expect type)
{
	struct nlattr *nest_parms;

	nest_parms = FUNC2(skb, type | NLA_F_NESTED);
	if (!nest_parms)
		goto nla_put_failure;
	if (FUNC0(skb, tuple) < 0)
		goto nla_put_failure;
	FUNC1(skb, nest_parms);

	return 0;

nla_put_failure:
	return -1;
}