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
struct Qdisc_ops {int /*<<< orphan*/  owner; int /*<<< orphan*/  (* destroy ) (struct Qdisc*) ;int /*<<< orphan*/  (* reset ) (struct Qdisc*) ;} ;
struct Qdisc {int flags; int padded; int /*<<< orphan*/  gso_skb; int /*<<< orphan*/  rate_est; int /*<<< orphan*/  bstats; int /*<<< orphan*/  stab; int /*<<< orphan*/  refcnt; struct Qdisc_ops* ops; } ;

/* Variables and functions */
 int TCQ_F_BUILTIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC7 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC10 (struct Qdisc*) ; 

void FUNC11(struct Qdisc *qdisc)
{
	const struct Qdisc_ops  *ops = qdisc->ops;

	if (qdisc->flags & TCQ_F_BUILTIN ||
	    !FUNC0(&qdisc->refcnt))
		return;

#ifdef CONFIG_NET_SCHED
	qdisc_list_del(qdisc);

	qdisc_put_stab(qdisc->stab);
#endif
	FUNC2(&qdisc->bstats, &qdisc->rate_est);
	if (ops->reset)
		ops->reset(qdisc);
	if (ops->destroy)
		ops->destroy(qdisc);

	FUNC5(ops->owner);
	FUNC1(FUNC6(qdisc));

	FUNC4(qdisc->gso_skb);
	FUNC3((char *) qdisc - qdisc->padded);
}