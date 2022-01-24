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
struct snd_seq_pool {int size; int room; int total_elements; int /*<<< orphan*/  lock; scalar_t__ max_used; struct snd_seq_event_cell* free; struct snd_seq_event_cell* ptr; } ;
struct snd_seq_event_cell {struct snd_seq_event_cell* next; struct snd_seq_pool* pool; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct snd_seq_event_cell* FUNC4 (int) ; 

int FUNC5(struct snd_seq_pool *pool)
{
	int cell;
	struct snd_seq_event_cell *cellptr;
	unsigned long flags;

	if (FUNC0(!pool))
		return -EINVAL;
	if (pool->ptr)			/* should be atomic? */
		return 0;

	pool->ptr = FUNC4(sizeof(struct snd_seq_event_cell) * pool->size);
	if (pool->ptr == NULL) {
		FUNC1("seq: malloc for sequencer events failed\n");
		return -ENOMEM;
	}

	/* add new cells to the free cell list */
	FUNC2(&pool->lock, flags);
	pool->free = NULL;

	for (cell = 0; cell < pool->size; cell++) {
		cellptr = pool->ptr + cell;
		cellptr->pool = pool;
		cellptr->next = pool->free;
		pool->free = cellptr;
	}
	pool->room = (pool->size + 1) / 2;

	/* init statistics */
	pool->max_used = 0;
	pool->total_elements = pool->size;
	FUNC3(&pool->lock, flags);
	return 0;
}