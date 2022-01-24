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
struct tcmsg {int /*<<< orphan*/  tcm_info; int /*<<< orphan*/  tcm_handle; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct dsmark_qdisc_data {int /*<<< orphan*/ * value; int /*<<< orphan*/ * mask; TYPE_1__* q; } ;
struct Qdisc {int /*<<< orphan*/  handle; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCA_DSMARK_MASK ; 
 int /*<<< orphan*/  TCA_DSMARK_VALUE ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct dsmark_qdisc_data*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlattr*) ; 
 int FUNC5 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct Qdisc*,struct dsmark_qdisc_data*,unsigned long) ; 
 struct dsmark_qdisc_data* FUNC8 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC9(struct Qdisc *sch, unsigned long cl,
			     struct sk_buff *skb, struct tcmsg *tcm)
{
	struct dsmark_qdisc_data *p = FUNC8(sch);
	struct nlattr *opts = NULL;

	FUNC7("dsmark_dump_class(sch %p,[qdisc %p],class %ld\n", sch, p, cl);

	if (!FUNC3(p, cl))
		return -EINVAL;

	tcm->tcm_handle = FUNC2(FUNC1(sch->handle), cl-1);
	tcm->tcm_info = p->q->handle;

	opts = FUNC6(skb, TCA_OPTIONS);
	if (opts == NULL)
		goto nla_put_failure;
	FUNC0(skb, TCA_DSMARK_MASK, p->mask[cl-1]);
	FUNC0(skb, TCA_DSMARK_VALUE, p->value[cl-1]);

	return FUNC5(skb, opts);

nla_put_failure:
	FUNC4(skb, opts);
	return -EMSGSIZE;
}