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
typedef  union evrec {int dummy; } evrec ;
struct seq_oss_readq {int qlen; int maxlen; size_t tail; int /*<<< orphan*/  lock; int /*<<< orphan*/  midi_sleep; int /*<<< orphan*/ * q; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,union evrec*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct seq_oss_readq *q, union evrec *ev)
{
	unsigned long flags;

	FUNC1(&q->lock, flags);
	if (q->qlen >= q->maxlen - 1) {
		FUNC2(&q->lock, flags);
		return -ENOMEM;
	}

	FUNC0(&q->q[q->tail], ev, sizeof(*ev));
	q->tail = (q->tail + 1) % q->maxlen;
	q->qlen++;

	/* wake up sleeper */
	if (FUNC3(&q->midi_sleep))
		FUNC4(&q->midi_sleep);

	FUNC2(&q->lock, flags);

	return 0;
}