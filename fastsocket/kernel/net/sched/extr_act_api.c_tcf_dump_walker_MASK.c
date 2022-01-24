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
struct tcf_hashinfo {int hmask; int /*<<< orphan*/  lock; struct tcf_common** htab; } ;
struct tcf_common {struct tcf_common* tcfc_next; } ;
struct tc_action {int order; struct tcf_common* priv; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {int* args; } ;

/* Variables and functions */
 int TCA_ACT_MAX_PRIO ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sk_buff*,struct tc_action*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct netlink_callback *cb,
			   struct tc_action *a, struct tcf_hashinfo *hinfo)
{
	struct tcf_common *p;
	int err = 0, index = -1,i = 0, s_i = 0, n_i = 0;
	struct nlattr *nest;

	FUNC4(hinfo->lock);

	s_i = cb->args[0];

	for (i = 0; i < (hinfo->hmask + 1); i++) {
		p = hinfo->htab[FUNC7(i, hinfo->hmask)];

		for (; p; p = p->tcfc_next) {
			index++;
			if (index < s_i)
				continue;
			a->priv = p;
			a->order = n_i;

			nest = FUNC2(skb, a->order);
			if (nest == NULL)
				goto nla_put_failure;
			err = FUNC6(skb, a, 0, 0);
			if (err < 0) {
				index--;
				FUNC3(skb, nest);
				goto done;
			}
			FUNC1(skb, nest);
			n_i++;
			if (n_i >= TCA_ACT_MAX_PRIO)
				goto done;
		}
	}
done:
	FUNC5(hinfo->lock);
	if (n_i)
		cb->args[0] += n_i;
	return n_i;

nla_put_failure:
	FUNC0(skb, nest);
	goto done;
}