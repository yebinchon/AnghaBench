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
struct snd_seq_pool {int dummy; } ;
struct snd_seq_fifo {int /*<<< orphan*/  lock; scalar_t__ cells; int /*<<< orphan*/ * tail; struct snd_seq_event_cell* head; struct snd_seq_pool* pool; } ;
struct snd_seq_event_cell {struct snd_seq_event_cell* next; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_seq_event_cell*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_seq_pool**) ; 
 scalar_t__ FUNC3 (struct snd_seq_pool*) ; 
 struct snd_seq_pool* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(struct snd_seq_fifo *f, int poolsize)
{
	unsigned long flags;
	struct snd_seq_pool *newpool, *oldpool;
	struct snd_seq_event_cell *cell, *next, *oldhead;

	if (FUNC0(!f || !f->pool))
		return -EINVAL;

	/* allocate new pool */
	newpool = FUNC4(poolsize);
	if (newpool == NULL)
		return -ENOMEM;
	if (FUNC3(newpool) < 0) {
		FUNC2(&newpool);
		return -ENOMEM;
	}

	FUNC5(&f->lock, flags);
	/* remember old pool */
	oldpool = f->pool;
	oldhead = f->head;
	/* exchange pools */
	f->pool = newpool;
	f->head = NULL;
	f->tail = NULL;
	f->cells = 0;
	/* NOTE: overflow flag is not cleared */
	FUNC6(&f->lock, flags);

	/* release cells in old pool */
	for (cell = oldhead; cell; cell = next) {
		next = cell->next;
		FUNC1(cell);
	}
	FUNC2(&oldpool);

	return 0;
}