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
struct tcf_common {struct tcf_common* tcfc_next; } ;
struct tc_action {int order; struct tcf_common* priv; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {int* args; } ;

/* Variables and functions */
 int POL_TAB_MASK ; 
 int RTM_DELACTION ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  police_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct sk_buff*,struct tc_action*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC6 (int,int) ; 
 struct tcf_common** tcf_police_ht ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct netlink_callback *cb,
			      int type, struct tc_action *a)
{
	struct tcf_common *p;
	int err = 0, index = -1, i = 0, s_i = 0, n_i = 0;
	struct nlattr *nest;

	FUNC3(&police_lock);

	s_i = cb->args[0];

	for (i = 0; i < (POL_TAB_MASK + 1); i++) {
		p = tcf_police_ht[FUNC6(i, POL_TAB_MASK)];

		for (; p; p = p->tcfc_next) {
			index++;
			if (index < s_i)
				continue;
			a->priv = p;
			a->order = index;
			nest = FUNC2(skb, a->order);
			if (nest == NULL)
				goto nla_put_failure;
			if (type == RTM_DELACTION)
				err = FUNC5(skb, a, 0, 1);
			else
				err = FUNC5(skb, a, 0, 0);
			if (err < 0) {
				index--;
				FUNC0(skb, nest);
				goto done;
			}
			FUNC1(skb, nest);
			n_i++;
		}
	}
done:
	FUNC4(&police_lock);
	if (n_i)
		cb->args[0] += n_i;
	return n_i;

nla_put_failure:
	FUNC0(skb, nest);
	goto done;
}