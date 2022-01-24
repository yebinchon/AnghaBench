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
struct tc_cbq_ovl {int /*<<< orphan*/  penalty; scalar_t__ pad; scalar_t__ priority2; int /*<<< orphan*/  strategy; } ;
struct sk_buff {int len; } ;
struct cbq_class {int /*<<< orphan*/  penalty; scalar_t__ priority2; int /*<<< orphan*/  ovl_strategy; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_cbq_ovl*) ; 
 int /*<<< orphan*/  TCA_CBQ_OVL_STRATEGY ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,unsigned char*) ; 
 unsigned char* FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static __inline__ int FUNC3(struct sk_buff *skb, struct cbq_class *cl)
{
	unsigned char *b = FUNC2(skb);
	struct tc_cbq_ovl opt;

	opt.strategy = cl->ovl_strategy;
	opt.priority2 = cl->priority2+1;
	opt.pad = 0;
	opt.penalty = cl->penalty;
	FUNC0(skb, TCA_CBQ_OVL_STRATEGY, sizeof(opt), &opt);
	return skb->len;

nla_put_failure:
	FUNC1(skb, b);
	return -1;
}