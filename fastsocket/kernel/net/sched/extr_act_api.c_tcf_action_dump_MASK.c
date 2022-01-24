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
struct tc_action {int /*<<< orphan*/  order; struct tc_action* next; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*,struct tc_action*,int,int) ; 

int
FUNC4(struct sk_buff *skb, struct tc_action *act, int bind, int ref)
{
	struct tc_action *a;
	int err = -EINVAL;
	struct nlattr *nest;

	while ((a = act) != NULL) {
		act = a->next;
		nest = FUNC2(skb, a->order);
		if (nest == NULL)
			goto nla_put_failure;
		err = FUNC3(skb, a, bind, ref);
		if (err < 0)
			goto errout;
		FUNC1(skb, nest);
	}

	return 0;

nla_put_failure:
	err = -EINVAL;
errout:
	FUNC0(skb, nest);
	return err;
}