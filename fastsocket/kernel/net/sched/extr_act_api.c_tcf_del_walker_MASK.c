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
struct tcf_hashinfo {int hmask; struct tcf_common** htab; } ;
struct tcf_common {struct tcf_common* tcfc_next; } ;
struct tc_action {TYPE_1__* ops; int /*<<< orphan*/  order; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  kind; } ;

/* Variables and functions */
 scalar_t__ ACT_P_DELETED ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TCA_FCNT ; 
 int /*<<< orphan*/  TCA_KIND ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int,int) ; 
 scalar_t__ FUNC7 (struct tcf_common*,int /*<<< orphan*/ ,struct tcf_hashinfo*) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct tc_action *a,
			  struct tcf_hashinfo *hinfo)
{
	struct tcf_common *p, *s_p;
	struct nlattr *nest;
	int i= 0, n_i = 0;

	nest = FUNC5(skb, a->order);
	if (nest == NULL)
		goto nla_put_failure;
	FUNC0(skb, TCA_KIND, a->ops->kind);
	for (i = 0; i < (hinfo->hmask + 1); i++) {
		p = hinfo->htab[FUNC6(i, hinfo->hmask)];

		while (p != NULL) {
			s_p = p->tcfc_next;
			if (ACT_P_DELETED == FUNC7(p, 0, hinfo))
				 FUNC2(a->ops->owner);
			n_i++;
			p = s_p;
		}
	}
	FUNC1(skb, TCA_FCNT, n_i);
	FUNC4(skb, nest);

	return n_i;
nla_put_failure:
	FUNC3(skb, nest);
	return -EINVAL;
}