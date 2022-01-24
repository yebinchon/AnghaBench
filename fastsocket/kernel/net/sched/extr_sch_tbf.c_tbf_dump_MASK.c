#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tc_tbf_qopt {int /*<<< orphan*/  buffer; int /*<<< orphan*/  mtu; int /*<<< orphan*/  peakrate; int /*<<< orphan*/  rate; int /*<<< orphan*/  limit; } ;
struct tbf_sched_data {int /*<<< orphan*/  buffer; int /*<<< orphan*/  mtu; TYPE_2__* P_tab; TYPE_1__* R_tab; int /*<<< orphan*/  limit; } ;
struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  opt ;
struct TYPE_4__ {int /*<<< orphan*/  rate; } ;
struct TYPE_3__ {int /*<<< orphan*/  rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_tbf_qopt*) ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  TCA_TBF_PARMS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct tbf_sched_data* FUNC5 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC6(struct Qdisc *sch, struct sk_buff *skb)
{
	struct tbf_sched_data *q = FUNC5(sch);
	struct nlattr *nest;
	struct tc_tbf_qopt opt;

	nest = FUNC4(skb, TCA_OPTIONS);
	if (nest == NULL)
		goto nla_put_failure;

	opt.limit = q->limit;
	opt.rate = q->R_tab->rate;
	if (q->P_tab)
		opt.peakrate = q->P_tab->rate;
	else
		FUNC1(&opt.peakrate, 0, sizeof(opt.peakrate));
	opt.mtu = q->mtu;
	opt.buffer = q->buffer;
	FUNC0(skb, TCA_TBF_PARMS, sizeof(opt), &opt);

	FUNC3(skb, nest);
	return skb->len;

nla_put_failure:
	FUNC2(skb, nest);
	return -1;
}