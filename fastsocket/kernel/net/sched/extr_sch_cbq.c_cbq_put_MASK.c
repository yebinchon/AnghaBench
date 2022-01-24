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
struct cbq_sched_data {struct cbq_class* rx_class; } ;
struct cbq_class {scalar_t__ refcnt; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Qdisc*,struct cbq_class*) ; 
 struct cbq_sched_data* FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/ * FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct Qdisc *sch, unsigned long arg)
{
	struct cbq_class *cl = (struct cbq_class*)arg;

	if (--cl->refcnt == 0) {
#ifdef CONFIG_NET_CLS_ACT
		spinlock_t *root_lock = qdisc_root_sleeping_lock(sch);
		struct cbq_sched_data *q = qdisc_priv(sch);

		spin_lock_bh(root_lock);
		if (q->rx_class == cl)
			q->rx_class = NULL;
		spin_unlock_bh(root_lock);
#endif

		FUNC0(sch, cl);
	}
}