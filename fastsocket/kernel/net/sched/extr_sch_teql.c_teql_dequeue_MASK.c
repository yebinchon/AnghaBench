#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ qlen; } ;
struct teql_sched_data {TYPE_5__ q; TYPE_1__* m; } ;
struct sk_buff {int dummy; } ;
struct netdev_queue {TYPE_4__* qdisc; } ;
struct net_device {int dummy; } ;
struct TYPE_7__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_2__ q; } ;
struct TYPE_8__ {scalar_t__ qlen; } ;
struct TYPE_9__ {TYPE_3__ q; } ;
struct TYPE_6__ {struct Qdisc* slaves; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (TYPE_5__*) ; 
 struct netdev_queue* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (TYPE_4__*) ; 
 struct teql_sched_data* FUNC4 (struct Qdisc*) ; 

__attribute__((used)) static struct sk_buff *
FUNC5(struct Qdisc* sch)
{
	struct teql_sched_data *dat = FUNC4(sch);
	struct netdev_queue *dat_queue;
	struct sk_buff *skb;

	skb = FUNC0(&dat->q);
	dat_queue = FUNC1(dat->m->dev, 0);
	if (skb == NULL) {
		struct net_device *m = FUNC3(dat_queue->qdisc);
		if (m) {
			dat->m->slaves = sch;
			FUNC2(m);
		}
	}
	sch->q.qlen = dat->q.qlen + dat_queue->qdisc->q.qlen;
	return skb;
}