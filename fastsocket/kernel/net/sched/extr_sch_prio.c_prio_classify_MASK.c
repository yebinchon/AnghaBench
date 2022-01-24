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
typedef  size_t u32 ;
struct tcf_result {size_t classid; } ;
struct sk_buff {size_t priority; } ;
struct prio_sched_data {size_t* prio2band; size_t bands; struct Qdisc** queues; int /*<<< orphan*/  filter_list; } ;
struct Qdisc {scalar_t__ handle; } ;

/* Variables and functions */
 int NET_XMIT_SUCCESS ; 
#define  TC_ACT_QUEUED 130 
#define  TC_ACT_SHOT 129 
#define  TC_ACT_STOLEN 128 
 scalar_t__ FUNC0 (size_t) ; 
 int FUNC1 (size_t) ; 
 size_t TC_PRIO_MAX ; 
 int __NET_XMIT_BYPASS ; 
 int __NET_XMIT_STOLEN ; 
 struct prio_sched_data* FUNC2 (struct Qdisc*) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,struct tcf_result*) ; 

__attribute__((used)) static struct Qdisc *
FUNC4(struct sk_buff *skb, struct Qdisc *sch, int *qerr)
{
	struct prio_sched_data *q = FUNC2(sch);
	u32 band = skb->priority;
	struct tcf_result res;
	int err;

	*qerr = NET_XMIT_SUCCESS | __NET_XMIT_BYPASS;
	if (FUNC0(skb->priority) != sch->handle) {
		err = FUNC3(skb, q->filter_list, &res);
#ifdef CONFIG_NET_CLS_ACT
		switch (err) {
		case TC_ACT_STOLEN:
		case TC_ACT_QUEUED:
			*qerr = NET_XMIT_SUCCESS | __NET_XMIT_STOLEN;
		case TC_ACT_SHOT:
			return NULL;
		}
#endif
		if (!q->filter_list || err < 0) {
			if (FUNC0(band))
				band = 0;
			return q->queues[q->prio2band[band&TC_PRIO_MAX]];
		}
		band = res.classid;
	}
	band = FUNC1(band) - 1;
	if (band >= q->bands)
		return q->queues[q->prio2band[0]];

	return q->queues[band];
}