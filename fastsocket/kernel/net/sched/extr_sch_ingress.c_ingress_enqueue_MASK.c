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
struct tcf_result {int /*<<< orphan*/  classid; } ;
struct sk_buff {int /*<<< orphan*/  tc_index; } ;
struct ingress_qdisc_data {int /*<<< orphan*/  filter_list; } ;
struct TYPE_3__ {int /*<<< orphan*/  drops; } ;
struct TYPE_4__ {int /*<<< orphan*/  bytes; int /*<<< orphan*/  packets; } ;
struct Qdisc {TYPE_1__ qstats; TYPE_2__ bstats; } ;

/* Variables and functions */
#define  TC_ACT_OK 132 
#define  TC_ACT_QUEUED 131 
#define  TC_ACT_RECLASSIFY 130 
#define  TC_ACT_SHOT 129 
#define  TC_ACT_STOLEN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 struct ingress_qdisc_data* FUNC2 (struct Qdisc*) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,struct tcf_result*) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct Qdisc *sch)
{
	struct ingress_qdisc_data *p = FUNC2(sch);
	struct tcf_result res;
	int result;

	result = FUNC3(skb, p->filter_list, &res);

	sch->bstats.packets++;
	sch->bstats.bytes += FUNC1(skb);
	switch (result) {
	case TC_ACT_SHOT:
		result = TC_ACT_SHOT;
		sch->qstats.drops++;
		break;
	case TC_ACT_STOLEN:
	case TC_ACT_QUEUED:
		result = TC_ACT_STOLEN;
		break;
	case TC_ACT_RECLASSIFY:
	case TC_ACT_OK:
		skb->tc_index = FUNC0(res.classid);
	default:
		result = TC_ACT_OK;
		break;
	}

	return result;
}