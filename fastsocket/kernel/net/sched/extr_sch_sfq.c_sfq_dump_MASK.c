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
struct tc_sfq_qopt {int perturb_period; int /*<<< orphan*/  flows; int /*<<< orphan*/  divisor; int /*<<< orphan*/  limit; int /*<<< orphan*/  quantum; } ;
struct sk_buff {int len; } ;
struct sfq_sched_data {int perturb_period; int /*<<< orphan*/  limit; int /*<<< orphan*/  quantum; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_sfq_qopt*) ; 
 int /*<<< orphan*/  SFQ_HASH_DIVISOR ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,unsigned char*) ; 
 struct sfq_sched_data* FUNC2 (struct Qdisc*) ; 
 unsigned char* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct Qdisc *sch, struct sk_buff *skb)
{
	struct sfq_sched_data *q = FUNC2(sch);
	unsigned char *b = FUNC3(skb);
	struct tc_sfq_qopt opt;

	opt.quantum = q->quantum;
	opt.perturb_period = q->perturb_period / HZ;

	opt.limit = q->limit;
	opt.divisor = SFQ_HASH_DIVISOR;
	opt.flows = q->limit;

	FUNC0(skb, TCA_OPTIONS, sizeof(opt), &opt);

	return skb->len;

nla_put_failure:
	FUNC1(skb, b);
	return -1;
}