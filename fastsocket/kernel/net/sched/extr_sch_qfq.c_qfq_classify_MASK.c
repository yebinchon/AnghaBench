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
struct tcf_result {int classid; scalar_t__ class; } ;
struct sk_buff {int priority; } ;
struct qfq_sched {int /*<<< orphan*/  filter_list; } ;
struct qfq_class {int dummy; } ;
struct Qdisc {int handle; } ;

/* Variables and functions */
 int NET_XMIT_SUCCESS ; 
#define  TC_ACT_QUEUED 130 
#define  TC_ACT_SHOT 129 
#define  TC_ACT_STOLEN 128 
 scalar_t__ FUNC0 (int) ; 
 int __NET_XMIT_BYPASS ; 
 int __NET_XMIT_STOLEN ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 struct qfq_sched* FUNC2 (struct Qdisc*) ; 
 struct qfq_class* FUNC3 (struct Qdisc*,int) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,struct tcf_result*) ; 

__attribute__((used)) static struct qfq_class *FUNC5(struct sk_buff *skb, struct Qdisc *sch,
				      int *qerr)
{
	struct qfq_sched *q = FUNC2(sch);
	struct qfq_class *cl;
	struct tcf_result res;
	int result;

	if (FUNC0(skb->priority ^ sch->handle) == 0) {
		FUNC1("qfq_classify: found %d\n", skb->priority);
		cl = FUNC3(sch, skb->priority);
		if (cl != NULL)
			return cl;
	}

	*qerr = NET_XMIT_SUCCESS | __NET_XMIT_BYPASS;
	result = FUNC4(skb, q->filter_list, &res);
	if (result >= 0) {
#ifdef CONFIG_NET_CLS_ACT
		switch (result) {
		case TC_ACT_QUEUED:
		case TC_ACT_STOLEN:
			*qerr = NET_XMIT_SUCCESS | __NET_XMIT_STOLEN;
		case TC_ACT_SHOT:
			return NULL;
		}
#endif
		cl = (struct qfq_class *)res.class;
		if (cl == NULL)
			cl = FUNC3(sch, res.classid);
		return cl;
	}

	return NULL;
}