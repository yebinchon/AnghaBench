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
struct netdev_queue {int dummy; } ;
struct Qdisc_ops {int priv_size; int /*<<< orphan*/  dequeue; int /*<<< orphan*/  enqueue; } ;
struct Qdisc {int padded; int /*<<< orphan*/  refcnt; struct netdev_queue* dev_queue; int /*<<< orphan*/  dequeue; int /*<<< orphan*/  enqueue; struct Qdisc_ops* ops; int /*<<< orphan*/  q; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int ENOBUFS ; 
 struct Qdisc* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (unsigned long) ; 
 int QDISC_ALIGNTO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct Qdisc *FUNC8(struct netdev_queue *dev_queue,
			  struct Qdisc_ops *ops)
{
	void *p;
	struct Qdisc *sch;
	unsigned int size;
	int err = -ENOBUFS;

	/* ensure that the Qdisc and the private data are 32-byte aligned */
	size = FUNC2(sizeof(*sch));
	size += ops->priv_size + (QDISC_ALIGNTO - 1);

	p = FUNC5(size, GFP_KERNEL);
	if (!p)
		goto errout;
	sch = (struct Qdisc *) FUNC2((unsigned long) p);
	sch->padded = (char *) sch - (char *) p;

	FUNC1(&sch->list);
	FUNC7(&sch->q);
	sch->ops = ops;
	sch->enqueue = ops->enqueue;
	sch->dequeue = ops->dequeue;
	sch->dev_queue = dev_queue;
	FUNC4(FUNC6(sch));
	FUNC3(&sch->refcnt, 1);

	return sch;
errout:
	return FUNC0(err);
}