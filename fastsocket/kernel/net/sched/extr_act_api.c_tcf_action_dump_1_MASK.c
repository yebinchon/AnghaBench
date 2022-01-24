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
struct tc_action {TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  kind; int /*<<< orphan*/ * dump; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCA_KIND ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned char*) ; 
 unsigned char* FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,struct tc_action*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sk_buff*,struct tc_action*,int,int) ; 

int
FUNC7(struct sk_buff *skb, struct tc_action *a, int bind, int ref)
{
	int err = -EINVAL;
	unsigned char *b = FUNC4(skb);
	struct nlattr *nest;

	if (a->ops == NULL || a->ops->dump == NULL)
		return err;

	FUNC0(skb, TCA_KIND, a->ops->kind);
	if (FUNC5(skb, a, 0))
		goto nla_put_failure;
	nest = FUNC2(skb, TCA_OPTIONS);
	if (nest == NULL)
		goto nla_put_failure;
	if ((err = FUNC6(skb, a, bind, ref)) > 0) {
		FUNC1(skb, nest);
		return err;
	}

nla_put_failure:
	FUNC3(skb, b);
	return -1;
}